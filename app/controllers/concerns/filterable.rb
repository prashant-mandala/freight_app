# frozen_string_literal: true

module Filterable
  extend ActiveSupport::Concern

  def filter
    @search = current_account.public_send(controller_name).ransack(params[:q])
    render "shared/filter"
  end
end
