json.( @job, :id, :reported_fault, :status, :travel_start, :travel_end,:labour_start, :labour_end)
 json.customer @job.customer_product.customer
  json.product  @job.customer_product.product 
  json.manufacturer @job.customer_product.product.manufacturer 
  json.report @job.report 
  json.job_parts @job.job_parts
  json.part_lists @job.customer_product.product.part_lists
  json.part_lists_with_part_numbers getPartListWithNums(@job.customer_product.product.part_lists)
  json.job_parts_with_part_numbers  getJobPartWithNums(@job.job_parts)
  


  




