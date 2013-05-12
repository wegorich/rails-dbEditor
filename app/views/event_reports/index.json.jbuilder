json.array!(@event_reports) do |event_report|
  json.extract! event_report, :name, :tech_support, :hostel, :sinopsis, :event_id
  json.url event_report_url(event_report, format: :json)
end