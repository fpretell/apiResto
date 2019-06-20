json.array! @reviews do |review|
  json.id review.id
  json.body review.content
  json.restaurant do
    json.id review.restaurant.id
    json.name review.restaurant.name
  end
end
