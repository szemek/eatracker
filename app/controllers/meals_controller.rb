class MealsController < ApplicationController
  def index
    meals = MealFetcher.all
    meal = MealBuilder.build

    render 'index', locals: {meals: meals, meal: meal}
  end

  def today
    meals = MealFetcher.for_today
    meal = MealBuilder.build

    render 'index', locals: {meals: meals, meal: meal}
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
    params.require(:meal).permit(:name, :size, :consumed_at => [:date, :time])
  end
end
