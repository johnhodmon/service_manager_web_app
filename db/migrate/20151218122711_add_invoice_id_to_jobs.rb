class AddInvoiceIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :invoice_id, :integer
  end
end
