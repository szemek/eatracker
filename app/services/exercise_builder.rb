require 'ostruct'

class ExerciseBuilder
  def self.build
    OpenStruct.new(created_at: DateTime.now.in_time_zone)
  end
end
