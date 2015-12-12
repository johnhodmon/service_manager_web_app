class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :reported_fault
      t.integer :travel_time
      t.integer :labour_time
      t.integer :product_id
      t.integer :engineer_id

      t.timestamps null: false
    end
  end
end
