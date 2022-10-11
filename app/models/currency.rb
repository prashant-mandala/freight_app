# frozen_string_literal: true

class Currency < ApplicationRecord
  include QuickSearchable::Currency
  include UserTrackable
  include Archivable
  include Deletable

  STATUS_LIST = %w[active archived deleted].freeze
  INDEX_COLUMNS = {
    name: { label: "Name", sortable: true, sort_key: :name, mandatory: true },
    code: { label: "Code", sortable: true, sort_key: :code, mandatory: false },
    symbol: { label: "Symbol", sortable: true, sort_key: :symbol, mandatory: false },
    status: { label: "Status", sortable: true, sort_key: :status, mandatory: false }
  }.freeze

  strip_attributes only: %i[name code symbol], collapse_spaces: true, replace_newlines: true

  belongs_to :account, counter_cache: true

  validates :name, presence: true, length: { maximum: 250 }, uniqueness: { case_sensitive: false, scope: :account_id }
  validates :code, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false, scope: :account_id }
  validates :symbol, presence: true, length: { maximum: 20 }

  scope :order_by_name, -> { order(:name) }

  def self.ransackable_scopes(_auth_object = nil)
    %i[quick_search]
  end
end
