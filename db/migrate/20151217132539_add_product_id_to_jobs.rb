class AddProductIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :product_id, :integer
  end
end
