class MealsController < ApplicationController
  def index
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @food = Food.find(params[:food_id])
    @meal.food = @food
    if @meal.save!
      redirect_to foods_path
    else
      flash[:notice] = 'This needs to be filled'
      # raise 'this needs to be filled'
    end
  end

  def destroy
    @meal = Meal.new(params[:id])
    @meal.destroy
    redirect_to workout_path, status: :see_other
  end

end
