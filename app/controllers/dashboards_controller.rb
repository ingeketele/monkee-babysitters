class DashboardsController < ApplicationController
  def show
    @user = current_user
    @params = params[:commit]

    if params[:commit] == "PENDING"
      @bookings = Booking.where(status: "pending", user_id: current_user.id)
    elsif params[:commit] == "CONFIRMED"
      @bookings = Booking.where(status: "confirmed", user_id: current_user.id)
    elsif params[:commit] == "COMPLETED"
      @bookings = Booking.where(status: "completed", user_id: current_user.id)
    else
      @bookings = Booking.where(user_id: current_user.id)
    end
  end
end
