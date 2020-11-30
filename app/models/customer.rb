class Customer < ApplicationRecord
  belongs_to :user
  has_many :tables, through: :reservations
  validates :last_name, presence: true
  validates :first_name, presence: true
end
