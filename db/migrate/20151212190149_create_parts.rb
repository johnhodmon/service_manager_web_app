class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :description
      t.decimal :cost
      t.integer :quantity_in_stock

      t.timestamps null: false
    end
  end
end
