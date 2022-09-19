class Rotum < ApplicationRecord
  has_many :rotums
  has_many :days
  has_many :rotum_vehicles
  has_many :vehicles, through: :rotum_vehicles
  has_many :travels

  validates :origem, presence: true
  validates :destino, presence: true
  validates :hr_partida, presence: true
end
