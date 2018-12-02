json.extract! artist, :id, :name, :string, :born, :died, :image, :bio, :style, :gallery_id, :created_at, :updated_at
json.url artist_url(artist, format: :json)
