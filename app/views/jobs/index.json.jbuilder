json.array!(@jobs) do |job|
  json.extract! job, :id, :reported_fault, :travel_time, :labour_time, :product_id, :engineer_id
  json.url job_url(job, format: :json)
end
