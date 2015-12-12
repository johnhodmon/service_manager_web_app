class CreateJobParts < ActiveRecord::Migration
  def change
    create_table :job_parts do |t|
      t.integer :job_id
      t.integer :part_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
