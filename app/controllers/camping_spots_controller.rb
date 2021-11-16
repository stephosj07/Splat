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
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_camping_spot
    @camping_spot = CampingSpot.find(params[:id])
  end

  def camping_spot_params
    params.require(:camping_spot).permit(:location, :price, :capacity, :description)
  end
end
