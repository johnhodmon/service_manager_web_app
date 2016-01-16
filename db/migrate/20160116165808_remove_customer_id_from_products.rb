class RemoveCustomerIdFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :customer_id
  end
end
