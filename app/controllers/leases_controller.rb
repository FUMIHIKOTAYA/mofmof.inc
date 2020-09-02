class LeasesController < ApplicationController

  def index
  end

  def new
    @lease = Lease.new
    2.times { @lease.closest_stations.build }
  end

  def create
    Lease.create(lease_params)
    redirect_to new_lease_path
  end

  private

  def lease_params
    params.require(:lease).permit(
      :lease_name,
      :rent,
      :address,
      :age,
      :note,
      closest_stations_attributes: %i(route_name station_name minute_walk),
    )
  end
end
