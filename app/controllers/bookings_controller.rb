class BookingsController < ApplicationController
  before_action :set_camping_spot, only: [:new, :create]
  before_action :set_booking, only: [:accept, :decline]

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

  def accept
    @booking.status = 'approved'
    @booking.save

    redirect_to my_host_bookings_path
  end

  def decline
    @booking.status = 'declined'
    @booking.save

    redirect_to my_host_bookings_path
  end

  def my_visitor_bookings
    @my_visitor_bookings = Booking.where(visitor: current_user)
    authorize(@my_visitor_bookings)
  end

  def my_host_bookings
    @my_host_bookings = current_user.host_bookings
    authorize(@my_host_bookings)

    @pending_bookings = @my_host_bookings.where(status: 'pending')
    @approved_bookings = @my_host_bookings.where(status: 'approved')
  end

  private

  def set_camping_spot
    @camping_spot = CampingSpot.find(params[:camping_spot_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize(@booking)
  end

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
