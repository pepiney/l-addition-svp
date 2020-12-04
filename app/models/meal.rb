class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy
  validates :meal_type, :meal_name, :price, presence: true
end
