class DashboardController < ApplicationController
  def index
    meals = MealFetcher.all
    meal = MealBuilder.build

    render 'index', locals: {meals: meals, meal: meal}
  end
end
