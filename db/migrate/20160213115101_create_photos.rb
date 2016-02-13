class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :job_id
      t.binary :photo_data

      t.timestamps null: false
    end
  end
end
