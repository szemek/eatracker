require 'ostruct'

class MealBuilder
  def self.build
    OpenStruct.new(consumed_at: DateTime.now)
  end
end
