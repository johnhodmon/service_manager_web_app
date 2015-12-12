json.array!(@job_parts) do |job_part|
  json.extract! job_part, :id, :job_id, :part_id, :quantity
  json.url job_part_url(job_part, format: :json)
end
