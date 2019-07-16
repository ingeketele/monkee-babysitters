class ReviewsController < ApplicationController
  before_action :set_booking
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking

    respond_to do |format|
      if @review.save
        format.html { redirect_to dashboard_path, notice: 'Review was successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
