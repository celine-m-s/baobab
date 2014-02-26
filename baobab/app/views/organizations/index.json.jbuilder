json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :artist, :customer
  json.url organization_url(organization, format: :json)
end
