class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end


  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.user = current_user
    if @workout.save
      redirect_to workout_path(@workout)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def workout_params
	  params.require(:workout).permit(:exercise, :set, :rep, :weight, :date)
  end

end
