class CreateVehicle < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :type
      t.string :make
      t.string :model
      t.string :max_speed
      t.integer :capacity
      t.boolean :is_new
      t.date :model_year
    end
  end
end
