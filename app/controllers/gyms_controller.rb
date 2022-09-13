class GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @markers = @gyms.geocoded.map do |gym|
      {
        lat: gym.latitude,
        lng: gym.longitude,
        info_window: render_to_string(partial: "info_window", locals: {gym: gym})
      }
    end
  end

  def show
    @gym = Gym.find(params[:id])
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :address, :rating, :description, :price, :image)
  end
end
