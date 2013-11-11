json.array!(@movies) do |movie|
  json.extract! movie, :title, :duration, :synopsis, :year, :category
  json.url movie_url(movie, format: :json)
end
