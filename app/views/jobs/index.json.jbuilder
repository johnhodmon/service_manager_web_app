json.array!(@jobs) do |job|
  json.( job, :id, :reported_fault,:created_at)
  json.customer job.customer_product.customer
  json.product  job.customer_product.product 
  json.manufacturer job.customer_product.product.manufacturer 
  json.report job.report 
  
  
  
end
