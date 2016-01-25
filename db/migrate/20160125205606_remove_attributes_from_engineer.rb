class RemoveAttributesFromEngineer < ActiveRecord::Migration
  def change
  	remove_column :engineers, :name
  	remove_column :engineers, :email
  	remove_column :engineers, :street
  	remove_column :engineers, :town
  	remove_column :engineers, :county
  	remove_column :engineers, :phone_number
  	remove_column :engineers, :pps
  end
end

 