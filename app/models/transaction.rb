class Transaction < ApplicationRecord
  belongs_to :investment
  validates :date, presence: true
  validates :type, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
