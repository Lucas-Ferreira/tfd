class Travel < ApplicationRecord
  belongs_to :rotum
  has_many :travel_vehicles
  has_many :vehicles, through: :travel_vehicles
  has_many :patients
end
