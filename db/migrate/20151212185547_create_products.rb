class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :serial_number
      t.string :product_number
      t.string :description
      t.integer :manufacturer_id

      t.timestamps null: false
    end
  end
end
