class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
