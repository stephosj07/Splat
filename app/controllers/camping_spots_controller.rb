class CampingSpotsController < ApplicationController
  before_action :set_camping_spot, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
  end

  def index
    @camping_spots = policy_scope(CampingSpot).order(created_at: :desc)
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
    # TODO: need to permit camping_spot params
  end
end
