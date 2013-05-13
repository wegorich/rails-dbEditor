json.array!(@elective_days) do |elective_day|
  json.extract! elective_day, :num, :time, :elective_id
  json.url elective_day_url(elective_day, format: :json)
end