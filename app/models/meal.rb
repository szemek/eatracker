class Meal < ActiveRecord::Base
  include ArelHelpers::ArelTable

  def consumed_at
    read_attribute(:consumed_at).in_time_zone('UTC')
  end
end
