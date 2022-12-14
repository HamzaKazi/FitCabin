class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @workout = Workout.find(params[:workout_id])
    @exercise.workout = @workout
    if @exercise.save!
      redirect_to workouts_path
    else
      flash[:notice] = 'This needs to be filled'
      # raise 'this needs to be filled'
    end
  end

    def destroy
      @exercise = Exercise.find(params[:id])
      @exercise.destroy
      redirect_to workout_path, status: :see_other
      # @exercise = exercise.find(params[:id])
      # if @exercise.destroy
      #   redirect_to workout_path, status: :see_other
      # else
      #   render "workouts/show"
  end

  private

  def exercise_params
	  params.require(:exercise).permit(:name, :set, :rep, :weight, :workout_id)
  end
end
