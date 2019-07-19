# class BabysittersController < ApplicationController
#   before_action :set_babysitter, only: [:show]

#   def index
#     price_filter = params.dig(:sort, :price_per_hour)
#     @babysitters = Babysitter.geocoded
#     if price_filter == "Lowest"
#       @babysitters = @babysitters.order(price_per_hour: :asc)
#     elsif price_filter == "Highest"
#       @babysitters = @babysitters.order(price_per_hour: :desc)
#     elsif price_filter == "All"
#       @babysitters = Babysitter.geocoded
#     end

#     @markers = @babysitters.map do |babysitter|
#       {
#         lat: babysitter.user.latitude,
#         lng: babysitter.user.longitude
#       }
#     end
#   end

#   private

#   def set_babysitter
#     @babysitter = Babysitter.find(params[:id])
#   end
# end

class BabysittersController < ApplicationController
  before_action :set_babysitter, only: [:show]

  def index
    price_filter = params.dig(:sort, :price_per_hour)
    distance_filter = params.dig(:sort, :distance_radius)

    @babysitters = Babysitter.geocoded
    @babysitters = Babysitter.find_by_name(params[:query]) if params[:query].present?
    @babysitters = @babysitters.order(price_per_hour: :asc) if price_filter == "Lowest"
    @babysitters = @babysitters.order(price_per_hour: :desc) if price_filter == "Highest"


    if user_signed_in? && current_user.address.present?
      @babysitters = @babysitters.near(current_user.address, 5, unit: :kilometers, order: "distance") if distance_filter  == "5 km"
      @babysitters = @babysitters.near(current_user.address, 10, unit: :kilometers, order: "distance") if distance_filter == "10 km"
      @babysitters = @babysitters.near(current_user.address, 50, unit: :kilometers, order: "distance") if distance_filter == "50 km"
    end

    @markers = @babysitters.map do |babysitter|
      {
        lat: babysitter.user.latitude,
        lng: babysitter.user.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { babysitter: babysitter })
      }
    end
  end

  private

  def set_babysitter
    @babysitter = Babysitter.find(params[:id])
  end
end
