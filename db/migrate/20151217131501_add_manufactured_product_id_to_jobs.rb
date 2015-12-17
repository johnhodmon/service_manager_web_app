class AddManufacturedProductIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :manufactured_product_id, :integer
  end
end
