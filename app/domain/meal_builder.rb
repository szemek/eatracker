require 'ostruct'

class MealBuilder
  def self.build
    OpenStruct.new(consumed_at: DateTime.now.in_time_zone)
  end
end
