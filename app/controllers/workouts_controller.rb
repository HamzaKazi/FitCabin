class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end


  def show
    @workout = Workout.find(params(:id))
  end

  def new
    @workout = Workout.new
  end

  def create
  end
end
