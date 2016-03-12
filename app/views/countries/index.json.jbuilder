json.array!(@countries) do |country|
  json.extract! country, :id, :name, :short_code, :status
  json.url country_url(country, format: :json)
end
