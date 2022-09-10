class Rotum < ApplicationRecord
  has_many :days
  has_many :rotum_vehicles
  has_many :vehicles, through: :rotum_vehicles
  has_many :travels
end
