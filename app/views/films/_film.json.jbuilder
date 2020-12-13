json.extract! film, :id, :name, :year, :created_at, :updated_at
json.url film_url(film, format: :json)
