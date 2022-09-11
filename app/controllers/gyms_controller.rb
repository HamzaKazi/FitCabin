class GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @markers = @gyms.geocoded.map do |gym|
  {
    lat: gym.latitude,
    lng: gym.longitude
  }
    end
  end

  def show
    @gym = Gym.find(params[:id])
  end
end
