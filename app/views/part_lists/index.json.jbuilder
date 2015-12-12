json.array!(@part_lists) do |part_list|
  json.extract! part_list, :id, :product_id, :part_id, :quantity
  json.url part_list_url(part_list, format: :json)
end
