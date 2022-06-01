class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :Shop_name
      t.integer :Code
      t.text :Description

      t.timestamps
    end
  end
end
