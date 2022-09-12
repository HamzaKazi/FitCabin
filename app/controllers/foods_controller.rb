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
  end

  def new
  end

  def create
  end

  def destroy
  end

end
