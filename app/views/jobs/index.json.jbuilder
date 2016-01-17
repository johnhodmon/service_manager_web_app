json.array!(@jobs) do |job|
  json.( job, :id, :reported_fault,  :labour_time,  :engineer_id)
  json.customer job.customer_product.customer
  json.product  job.customer_product.product 
end
