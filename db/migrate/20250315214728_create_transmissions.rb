class CreateTransmissions < ActiveRecord::Migration[8.0]
  def change
    create_table :transmissions do |t|
      t.string :name

      t.timestamps
    end
  end
end
