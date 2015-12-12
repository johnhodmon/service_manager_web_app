json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :street, :town, :county, :phone, :email, :lat_lng
  json.url customer_url(customer, format: :json)
end
