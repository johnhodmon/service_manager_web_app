class RemoveJobIdFromInvoice < ActiveRecord::Migration
  def change
  		remove_column :invoices, :job_id
  end
end
