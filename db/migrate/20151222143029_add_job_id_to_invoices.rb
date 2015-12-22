class AddJobIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :job_id, :integer
  end
end
