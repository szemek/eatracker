class AddSizeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :size, :string
  end
end
