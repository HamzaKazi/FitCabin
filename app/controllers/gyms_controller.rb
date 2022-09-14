class GymsController < ApplicationController
  def index
    if params[:rating].present?
      if params[:price].present?
        if params[:price] == "L"
          @gyms = Gym.order(:price).and.(Gym.where(rating: params[:rating].to_f))
        else
          @gyms = Gym.order(:price).and.(Gym.where(rating: params[:rating].to_f)).reverse
        end
      else
        @gyms = Gym.where(rating: params[:rating].to_f)
      end
    elsif params[:price].present?
      if params[:price] == "L"
        @gyms = Gym.order(:price)
      else
        @gyms = Gym.order(:price).reverse
      end
    elsif params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @gyms = Gym.where(sql_query, query: "%#{params[:query]}%")
    else
      @gyms = Gym.all
    end



        @markers = @gyms.map do |gym|
        {
          lat: gym.latitude,
          lng: gym.longitude,
          info_window: render_to_string(partial: "info_window", locals: {gym: gym})
        }
      end
  end

  def show
    @gym = Gym.find(params[:id])
    @review = Review.new
  end

  private

  def gym_params
    params.require(:gym).permit(:name, :address, :rating, :description, :price, images: [])
  end
end
