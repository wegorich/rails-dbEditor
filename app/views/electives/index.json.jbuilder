json.array!(@electives) do |elective|
  json.extract! elective, :name
  json.url elective_url(elective, format: :json)
end