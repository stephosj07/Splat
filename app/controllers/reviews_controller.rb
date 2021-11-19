class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:id])
    @review.booking = @booking

    if @booking.save
      redirect_to camping_spots_path(@booking.camping_spot)
    else
      render 'camping_spots/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
