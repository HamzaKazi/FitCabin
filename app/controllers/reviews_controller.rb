class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @gym = Gym.find(params[:gym_id])
    @review.gym = @gym
    if @review.save
      redirect_to gym_path(@gym)
    else
      render 'gyms/show', status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
