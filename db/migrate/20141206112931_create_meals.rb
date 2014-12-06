class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name, null: false
      t.integer :energy
      t.datetime :consumed_at
    end
  end
end
