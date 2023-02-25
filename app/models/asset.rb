class Asset < ApplicationRecord
  validates :name, presence: true
  validates :type, presence: true
  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
