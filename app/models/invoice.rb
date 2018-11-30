class Invoice < ApplicationRecord
  belongs_to :user
  validates :terms, numericality: { greater_than: 10 }
  validates :invoice_value, numericality: { greater_than: 500 }
end
