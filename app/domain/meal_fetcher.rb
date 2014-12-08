class MealFetcher
  def self.all
    Meal.where(Meal[:consumed_at].gt(Date.current))
        .order(Meal[:consumed_at].desc)
  end

  def self.for_day(day)
    Meal.where(Meal[:consumed_at].gt(day))
        .where(Meal[:consumed_at].lt(day.tomorrow))
        .order(Meal[:consumed_at].desc)
  end
end
