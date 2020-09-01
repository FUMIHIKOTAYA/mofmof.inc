class LeasesController < ApplicationController

  def index
  end

  def new
    @lease = Lease.new
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
      :note
    )
  end
end



end
