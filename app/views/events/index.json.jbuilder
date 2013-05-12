json.array!(@events) do |event|
  json.extract! event, :start, :end, :event_type_id, :name
  json.url event_url(event, format: :json)
end