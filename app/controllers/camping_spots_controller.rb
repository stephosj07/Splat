class CampingSpotsController < ApplicationController
  before_action :set_camping_spot, only: [:show, :edit, :update, :destroy]

  def new
    @camping_spot = CampingSpot.new
    authorize(@camping_spot)
  end

  def create
    @camping_spot = CampingSpot.new(camping_spot_params)
    @camping_spot.host = current_user
    authorize(@camping_spot)

    if @camping_spot.save
      redirect_to camping_spots_path
    else
      render :new
    end
  end

  def index
    @camping_spots = policy_scope(CampingSpot)
    @camping_spot_map = CampingSpot.all

    @markers = @camping_spot_map.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
  end

  def edit
  end

  def update
    @camping_spot.update(camping_spot_params)

    redirect_to my_spots_path
  end

  def destroy
    @camping_spot.destroy

    redirect_to my_spots_path
  end

  def my_host_spots
    @camping_spots = CampingSpot.where(host: current_user)
    authorize(@camping_spots)
  end

  private

  def set_camping_spot
    @camping_spot = CampingSpot.find(params[:id])
    authorize(@camping_spot)
  end

  def camping_spot_params
    params.require(:camping_spot).permit(:title, :location, :price, :capacity, :description, photos: [])
  end
end
