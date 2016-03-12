json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :categoty_id, :user_id, :location, :time_from, :time_to, :days, :status
  json.url shop_url(shop, format: :json)
end
