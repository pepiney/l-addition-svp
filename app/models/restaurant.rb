class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy
  has_many :tables, dependent: :destroy
  validates :name, :address, presence: true
  # validates :description, :photo, presence: true
end
