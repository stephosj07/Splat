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
      redirect_to my_spots_path
    else
      render :new
    end
  end

  def index
    @camping_spots = policy_scope(CampingSpot)
    @camping_spot_map = CampingSpot.all

    @markers = @camping_spot_map.geocoded.map do |camping_spot|
      {
        lat: camping_spot.latitude,
        lng: camping_spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: { camping_spot: camping_spot })
      }
    end

    if params[:query].present?
      @camping_spots = CampingSpot.search_by_title_and_location_and_description(params[:query])
    else
      @camping_spots = CampingSpot.all
    end
  end

  def show
    @booking = @camping_spot.bookings.find_by(visitor: current_user)
    @review = Review.new
  end

  def edit
  end

  def update
    if @camping_spot.update(camping_spot_params)
      redirect_to my_spots_path
    else
      render :edit
    end
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
