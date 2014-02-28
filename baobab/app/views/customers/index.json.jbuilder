json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :id_card_number
  json.url customer_url(customer, format: :json)
end
