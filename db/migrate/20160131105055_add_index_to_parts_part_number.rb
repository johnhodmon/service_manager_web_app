class AddIndexToPartsPartNumber < ActiveRecord::Migration
  def change
  	add_index :parts, :part_number, unique: true
  end
end
