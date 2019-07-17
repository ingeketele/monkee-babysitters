class BabysittersController < ApplicationController
  def index
    price_filter = params.dig(:sort, :price_per_hour)
    @babysitters = Babysitter.all
    if price_filter == "Lowest"
      @babysitters = @babysitters.order(price_per_hour: :asc)
    elsif price_filter == "Highest"
      @babysitters = @babysitters.order(price_per_hour: :desc)
    elsif price_filter == "All"
      @babysitters = Babysitter.all
    end
  end
end
