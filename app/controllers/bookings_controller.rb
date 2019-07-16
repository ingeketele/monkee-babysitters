class BookingsController < ApplicationController
  before_action :set_babysitter, only: [:index, :new, :create]
  before_action :set_booking, only: [:show]

  def index
    @bookings = Booking.all.where(user_id: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to babysitter_path(@babysitter)
    else
      render :new
    end
  end

  def show
  end

  private

  def set_babysitter
    @babysitter = Babysitter.find(params[:babysitter_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :babysitter_id, :start_time, :duration_per_hour, :price_per_hour, :status)
  end
end
