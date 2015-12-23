class CreateCustomerProducts < ActiveRecord::Migration
  def change
    create_table :customer_products do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string :serial_number

      t.timestamps null: false
    end
  end
end
