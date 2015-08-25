class DropEnergyFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :energy
  end
end
