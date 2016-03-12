json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :review, :shop_id
  json.url review_url(review, format: :json)
end
