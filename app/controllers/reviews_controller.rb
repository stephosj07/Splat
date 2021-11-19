class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:id])
    @camping_spot = @booking.camping_spot
    @review.booking = @booking
    authorize(@review)

    if @review.save
      redirect_to camping_spot_path(@camping_spot, anchor: "review-#{@review.id}")
    else
      render 'camping_spots/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
