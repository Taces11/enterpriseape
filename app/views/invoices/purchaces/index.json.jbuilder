json.array!(@purchaces) do |purchace|
  json.extract! purchace, :id, :name, :catagory, :quantity, :invoice_id
  json.url purchace_url(purchace, format: :json)
end
