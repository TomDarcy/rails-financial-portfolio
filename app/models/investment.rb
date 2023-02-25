class Investment < ApplicationRecord
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates :investment_type, presence: true
end
