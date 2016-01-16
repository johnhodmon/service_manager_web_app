json.array!(@jobs) do |job|
  json.extract! job, :id, :reported_fault,  :labour_time,  :engineer_id
  json.url job_url(job, format: :json)
end
