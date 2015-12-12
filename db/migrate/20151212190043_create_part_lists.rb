class CreatePartLists < ActiveRecord::Migration
  def change
    create_table :part_lists do |t|
      t.integer :product_id
      t.integer :part_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
