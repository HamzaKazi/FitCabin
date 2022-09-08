class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
  end

end
