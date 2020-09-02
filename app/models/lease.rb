class Lease < ApplicationRecord
  has_many :closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations, allow_destroy: true

  validates :lease_name, presence: true, length: { maximum: 50 }
  validates :rent, numericality: { only_integer: true }
  validates :address, presence: true, length: { maximum: 100 }
  validates :age, numericality: { only_integer: true }
  validates :note, length: { maximum: 300 }, allow_blank: true
end
