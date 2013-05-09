json.array!(@firms) do |firm|
  json.extract! firm, :[name
  json.url firm_url(firm, format: :json)
end