class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :meals
  has_many :tables
  validates :name, :address, :description, :photo, presence: true
end
