json.array!(@people) do |person|
  json.extract! person, :name, :surname
  json.url person_url(person, format: :json)
end
