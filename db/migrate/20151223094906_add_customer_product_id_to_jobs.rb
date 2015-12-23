class AddCustomerProductIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :customer_product_id, :integer
  end
end
