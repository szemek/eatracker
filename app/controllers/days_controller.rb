class DaysController < ApplicationController
  def show
    meals = MealFetcher.for_day(day)
    render 'show', locals: {meals: meals}
  end

  private

  def day
    year, month, day = [params[:year], params[:month], params[:day]].map(&:to_i)

    Date.new(year, month, day)
  end
end
