json.array!(@videos) do |video|
  json.extract! video, :id, :data, :job_id
  json.url video_url(video, format: :json)
end
