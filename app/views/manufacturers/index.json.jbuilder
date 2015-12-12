json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :name, :street, :town, :county, :phone, :email
  json.url manufacturer_url(manufacturer, format: :json)
end
