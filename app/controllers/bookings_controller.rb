class BookingsController < ApplicationController
  before_action :set_camping_spot, only: [:new, :create]

  def new
    @booking = Booking.new
    authorize(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.visitor = current_user
    @booking.camping_spot = @camping_spot
    authorize(@booking)

    if @booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def set_camping_spot
    @camping_spot = CampingSpot.find(params[:camping_spot_id])
  end

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
