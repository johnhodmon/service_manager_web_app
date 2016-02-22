class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.binary :data
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
