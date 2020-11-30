class Order < ApplicationRecord
  belongs_to :reservation
  belongs_to :meal
  belongs_to :table
  has_many :customers, through: :reservations
end
