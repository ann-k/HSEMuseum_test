json.extract! artwork, :id, :title, :year, :image, :blocked, :artist_id, :integer, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
