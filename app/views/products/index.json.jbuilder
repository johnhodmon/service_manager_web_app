json.array!(@products) do |product|
  json.extract! product, :id, :serial_number, :product_number, :description, :manufacturer_id
  json.url product_url(product, format: :json)
end
