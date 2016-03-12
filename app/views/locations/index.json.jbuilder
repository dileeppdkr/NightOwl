json.array!(@locations) do |location|
  json.extract! location, :id, :lng, :lon, :place, :pin, :status
  json.url location_url(location, format: :json)
end
