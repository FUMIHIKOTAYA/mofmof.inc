class ClosestStation < ApplicationRecord
  belongs_to :lease

  validates :route_name, presence: true, on: :update
  validates :station_name, presence: true, on: :update
  validates :minute_walk, presence: true, on: :update
end
