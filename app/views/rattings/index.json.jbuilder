json.array!(@rattings) do |ratting|
  json.extract! ratting, :id, :user_id, :ratting, :shop_id
  json.url ratting_url(ratting, format: :json)
end
