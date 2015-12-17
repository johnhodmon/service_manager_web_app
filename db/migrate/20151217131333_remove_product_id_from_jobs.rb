class RemoveProductIdFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :product_id
  end
end
