class Meal < ApplicationRecord
  belongs_to :restaurant
  has many :orders
  validates :meal_type, :meal_name, :price, presence: true
end
