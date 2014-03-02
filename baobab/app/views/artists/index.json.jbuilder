json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :vat_number
  json.url organization_artists_url(artist, format: :json)
end
