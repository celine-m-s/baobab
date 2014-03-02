json.array!(@deals) do |deal|
  json.extract! deal, :id, :customer, :date, :price, :deposit, :due_date, :payment_type, :invoice_number, :shipping_cost, :vat, :payment_status
  json.url deal_url(deal, format: :json)
end
