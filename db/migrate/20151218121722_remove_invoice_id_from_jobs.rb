class RemoveInvoiceIdFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :invoice_id
  end
end
