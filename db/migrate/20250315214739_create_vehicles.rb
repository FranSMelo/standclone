class CreateVehicles < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicles do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :model
      t.references :vehicle_type, null: false, foreign_key: true
      t.references :segment, null: false, foreign_key: true
      t.integer :registration_year
      t.integer :registration_month
      t.integer :mileage
      t.decimal :price
      t.references :fuel_type, null: false, foreign_key: true
      t.integer :power_hp
      t.integer :engine_size
      t.references :transmission, null: false, foreign_key: true
      t.string :color
      t.integer :doors
      t.references :condition, null: false, foreign_key: true
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
