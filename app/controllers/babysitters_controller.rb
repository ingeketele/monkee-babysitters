class BabysittersController < ApplicationController
  def index
    @babysitters = Babysitter.all
  end
end
