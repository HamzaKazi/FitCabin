class FoodsController < ApplicationController
  def index
    @foods = Food.all
    @food = Food.new
    @meal = Meal.new

  end

  def show
    @food = Food.find(params[:id])
    @meals = @food.meals

    # API call
    # info = []
    # @food.meals.each do |meal|

    #   #API Call
    #   file = URI.open("https://api.edamam.com/api/food-database/v2/parser?app_id=3543b3b6&app_key=ddbbad637ebc1845703cc748ebfaac5b&ingr=#{meal.name}")
    #   data = JSON.parse(file)

    #   carbs = data.hints[0].food.nutrients["CHOCDF"]
    #   carbs_grams = (carbs/100) * meal.weight.to_f

    #   # JSOn
    #   # info  << {
        # carbs: carbs_grams,
        # calorie: JSON["carbs"],
        # fibre: JSON["carbs"]
      # }
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id
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
