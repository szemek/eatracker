class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :value
      t.datetime :measured_at
    end
  end
end
