json.array!(@customer_products) do |customer_product|
  json.extract! customer_product, :id, :customer_id, :product_id, :serial_number
  json.url customer_product_url(customer_product, format: :json)
end
