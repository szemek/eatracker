class MealsController < ApplicationController
  def create
    MealCreator.create(meal_params)

    redirect_to(:back)
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :energy, :consumed_at => [:date, :time])
  end
end
