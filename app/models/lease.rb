class Lease < ApplicationRecord
  has_many :closest_stations, dependent: :destroy, inverse_of: :lease
  accepts_nested_attributes_for :closest_stations, allow_destroy: true, reject_if: :all_blank

  validates :lease_name, presence: true, length: { maximum: 50 }
  validates :rent, numericality: { only_integer: true, greater_than: 7000, less_than: 5310000 }
  validates :address, presence: true, length: { maximum: 100 }
  validates :age, numericality: { only_integer: true, less_than: 300 }
  validates :note, length: { maximum: 300 }, allow_blank: true
end
