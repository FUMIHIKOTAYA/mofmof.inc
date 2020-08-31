class Lease < ApplicationRecord
  has_many: closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations, allow_destroy: true
end
