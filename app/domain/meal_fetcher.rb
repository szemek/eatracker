class MealFetcher
  def self.all
    Meal.order(Meal[:consumed_at].desc)
  end
end
