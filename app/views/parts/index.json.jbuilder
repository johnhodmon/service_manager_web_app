json.array!(@parts) do |part|
  json.extract! part, :id, :part_number, :description, :cost, :quantity_in_stock
  json.url part_url(part, format: :json)
end
