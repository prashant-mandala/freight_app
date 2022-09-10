# frozen_string_literal: true

class PageSetting < ApplicationRecord
  MODULE_NAMES = ["master_countries"].freeze
  MODULE_CLASSES = ["Country"].freeze

  before_validation :set_column_settings, on: :create

  belongs_to :user

  validates :module_name, presence: true, length: { maximum: 250 },
                          uniqueness: { case_sensitive: false, scope: :user_id }, inclusion: { in: MODULE_NAMES }
  validates :module_class, presence: true, length: { maximum: 250 },
                           uniqueness: { case_sensitive: false, scope: :module_name }, inclusion: { in: MODULE_CLASSES }
  validates :page_items, presence: true, numericality: { only_integer: true, in: [5..50] }
  validates :column_settings, presence: true

  def off_columns
    column_settings["off_columns"].map(&:to_sym)
  end

  def class_constant
    module_class.classify.constantize
  end

  def index_columns
    class_constant::INDEX_COLUMNS
  end

  def enabled_index_column_keys
    index_columns.keys - off_columns
  end

  private

  def set_column_settings
    self.column_settings = { off_columns: [] }
  end
end
