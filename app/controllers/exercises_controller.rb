class ExercisesController < ApplicationController
  def index
    exercise = ExerciseBuilder.build
    exercises = Exercise.all

    render :index, locals: {exercise: exercise, exercises: exercises}
  end

  def create
    ExerciseCreator.create(exercise_params)

    redirect_to(:back)
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :created_at)
  end
end
