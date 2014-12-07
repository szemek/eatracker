class MealsController < ApplicationController
  def index
    redirect_to(root_path)
  end

  def create
    MealCreator.create(meal_params)

    redirect_to(:back)
  end

  def show
    meal = Meal.find(params[:id])

    render 'show', locals: {meal: meal}
  end

  def destroy
    Meal.destroy(params[:id])

    redirect_to(root_path)
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :energy, :consumed_at => [:date, :time])
  end
end
