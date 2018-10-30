class Vehicle < ApplicationRecord
  belongs_to :vehicle_category_and_payment
  validates :license_plate, uniqueness: true
end
