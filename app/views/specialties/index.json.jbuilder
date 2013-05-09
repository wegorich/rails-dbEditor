json.array!(@specialties) do |specialty|
  json.extract! specialty, :[num, :name
  json.url specialty_url(specialty, format: :json)
end