class BabysittersController < ApplicationController
  before_action :set_babysitter, only: [:show]

  def index
  end

  def show
  end

  private

  def set_babysitter
    @babysitter = Babysitter.find(params[:id])
  end
end
