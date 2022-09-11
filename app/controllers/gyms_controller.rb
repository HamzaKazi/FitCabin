class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :address, :rating, :description, :price, :image)
  end

end
