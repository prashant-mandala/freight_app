# frozen_string_literal: true

require "smarter_csv"

module Importers
  class ImportService < ApplicationService
    def initialize(file, user)
      super()
      @csv_data = SmarterCSV.process(file, file_encoding: "bom|utf-8")
      @user = user
      @current_account = @user.account
      @error_string = []
    end

    def call
      @csv_data.first(import_limit).each do |data|
        record = initialize_resource(data)
        @error_string << (data.values + [record.full_message_errors]) unless record.save
      end

      send_acknowledgement_mail
    end

    private

    def send_acknowledgement_mail
      if @error_string.blank?
        ImportMailer.success(@user, resources_name).deliver_now
      else
        ImportMailer.failure(@user, resources_name, generate_error_csv).deliver_now
      end
    end

    def generate_error_csv
      CSV.generate(headers: true) do |csv|
        csv << error_csv_header
        @error_string.each { |row| csv << row }
      end
    end

    def import_limit
      (ENV["IMPORT_ROWS_LIMIT"].presence || 100).to_i
    end
  end
end