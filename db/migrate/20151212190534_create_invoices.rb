class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.decimal :travel_cost
      t.decimal :parts_cost
      t.decimal :labour_cost
      t.decimal :vat
      t.decimal :total
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
