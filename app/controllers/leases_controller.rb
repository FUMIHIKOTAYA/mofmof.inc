class LeasesController < ApplicationController
  before_action :set_lease, only: %i(show edit update destroy)
  before_action :set_closest_stations, only: %i(show edit update)

  def index
    @leases = Lease.all
  end

  def new
    @lease = Lease.new
    2.times { @lease.closest_stations.build }
  end

  def create
    @lease = Lease.new(lease_params)
    if @lease.save
      redirect_to leases_path, notice: %q(物件を登録しました。)
    else
      render :new
    end
  end

  def show
    @closest_stations = @lease.closest_stations
  end

  def edit
    @lease.closest_stations.build
  end

  def update
    if @lease.update(lease_params)
      redirect_to leases_path, notice: %q(物件を編集しました。)
    else
      render :edit
    end
  end

  def destroy
    @lease.destroy
    redirect_to leases_path, notice: %q(物件を削除しました。)
  end

  private

  def lease_params
    params.require(:lease).permit(
      :lease_name,
      :rent,
      :address,
      :age,
      :note,
      closest_stations_attributes: %i(route_name station_name minute_walk id _destroy),
    )
  end

  def set_lease
    @lease = Lease.find(params[:id])
  end

  def set_closest_stations
    @closest_stations = @lease.closest_stations
  end
end
