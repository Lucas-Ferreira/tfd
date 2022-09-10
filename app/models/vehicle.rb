class Vehicle < ApplicationRecord
  has_many :rotum_vehicles
  has_many :rotums, through: :rotum_vehicles
  has_many :vehicles
end
