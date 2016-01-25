class CreateOfficeAdministrators < ActiveRecord::Migration
  def change
    create_table :office_administrators do |t|

      t.timestamps null: false
    end
  end
end
