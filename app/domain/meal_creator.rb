class MealCreator
  def self.create(params = {})
    datetime = params.delete(:consumed_at)

    date = datetime[:date]
    time = datetime[:time]

    consumed_at = DateTime.parse("#{date} #{time}")

    Meal.create(params.merge(consumed_at: consumed_at))
  end
end
