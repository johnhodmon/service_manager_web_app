class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :street
      t.string :town
      t.string :county
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
