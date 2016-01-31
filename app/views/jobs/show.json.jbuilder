json.( @job, :id, :reported_fault, :miles, :labour_time, :status)
 json.customer @job.customer_product.customer
  json.product  @job.customer_product.product 
  json.manufacturer @job.customer_product.product.manufacturer 
  json.report @job.report 
  json.job_parts @job.job_parts
  


  




