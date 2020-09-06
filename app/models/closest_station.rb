class ClosestStation < ApplicationRecord
  belongs_to :lease, inverse_of: :closest_stations

  validates :station_name, presence: true, if: :present_route_name_or_minute_walk?

  def present_route_name_or_minute_walk?
    route_name.present? || minute_walk.present?
  end
end
