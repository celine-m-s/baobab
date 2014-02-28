json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :title, :year, :on_website, :order_status, :bibliography, :condition_report, :edition_type, :provenance, :signature, :medium, :comment, :height, :width, :depth, :estimation, :belongs_to
  json.url artwork_url(artwork, format: :json)
end
