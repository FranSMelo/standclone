class CreateSegments < ActiveRecord::Migration[8.0]
  def change
    create_table :segments do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
