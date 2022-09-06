class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @workout = Workout.find(params[:workout_id])
    @exercise.workout = @workout
    if @exercise.save
      redirect_to workouts_path
    else
      render "workouts/index", status: :unprocessable_entity
    end
  end

  private

  def exercise_params
	  params.require(:exercise).permit(:name, :set, :rep, :weight, :workout_id)
  end
end
