class FoodsController < ApplicationController
  def index
    @foods = Food.all
    @foods = Food.new
    @meal = Meal.new
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @foods = Food.where(sql_query, query: "%#{params[:query]}%")
    else
      @foods = Food.all
    end
  end

  def show
    @food = Food.find(params[:id])
    @meals = @food.meals
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    if @food.save
      redirect_to foods_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      redirect_to foods_path, status: :see_other
    else
      render "foods/index"
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :date)
  end
end
