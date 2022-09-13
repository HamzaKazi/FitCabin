class FoodsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @foods = Food.where(sql_query, query: "%#{params[:query]}%")
    else
      @foods = Food.all
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def food_params
    params.require(:food).permit(:name, :calories)
  end
end
