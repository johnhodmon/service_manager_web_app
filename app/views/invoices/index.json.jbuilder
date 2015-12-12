json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :invoice_number, :travel_cost, :parts_cost, :labour_cost, :vat, :total, :job_id
  json.url invoice_url(invoice, format: :json)
end
