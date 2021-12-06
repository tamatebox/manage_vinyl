json.extract! vinyl, :id, :artist :alphabet_artist, :album, :year, :genre, :country, :size, :created_at, :updated_at, :star, :compilation, :review, :spotify, :catalog
json.url vinyl_url(vinyl, format: :json)
