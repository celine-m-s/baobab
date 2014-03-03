json.array!(@items) do |item|
  json.extract! item, :id, :entry_date, :exit_date, :location, :artwork, :edition
  json.url item_url(item, format: :json)
end
