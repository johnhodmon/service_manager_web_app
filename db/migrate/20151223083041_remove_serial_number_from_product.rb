class RemoveSerialNumberFromProduct < ActiveRecord::Migration
  def change
  	remove_column :products, :serial_number
  end
end
