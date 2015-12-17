class RemoveManufacturedProductIdFromJobs < ActiveRecord::Migration
  def change
  		remove_column :jobs, :manufactured_product_id
  end
end
