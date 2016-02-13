json.array!(@photos) do |photo|
  json.extract! photo, :id, :job_id, :photo_data
  json.url photo_url(photo, format: :json)
end
