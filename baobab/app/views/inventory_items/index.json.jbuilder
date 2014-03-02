json.array!(@inventory_items) do |inventory_item|
  json.extract! inventory_item, :id, :entry_date, :exit_date, :location, :artwork, :edition
  json.url inventory_item_url(inventory_item, format: :json)
end
