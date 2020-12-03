class Customer < ApplicationRecord
  belongs_to :user
  has_many :tables, through: :reservations
  has_one :reservation
  #validates :last_name, :first_name, :user_id, presence: true
end
