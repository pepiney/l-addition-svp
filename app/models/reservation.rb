class Reservation < ApplicationRecord
  belongs_to :table
  belongs_to :customer
  has_many :orders, dependent: :destroy
end
