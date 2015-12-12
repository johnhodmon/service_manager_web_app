class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :street
      t.string :town
      t.string :county
      t.string :phone
      t.string :email
      t.string :lat_lng

      t.timestamps null: false
    end
  end
end
