class DashboardController < ApplicationController
  def index
    meals = Meal.all
    meal = Meal.new(consumed_at: DateTime.now)

    render 'index', locals: {meals: meals, meal: meal}
  end
end
