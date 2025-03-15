class CreateVehicleImages < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicle_images do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.string :image_path
      t.boolean :primary_image
      t.integer :position

      t.timestamps
    end
  end
end
