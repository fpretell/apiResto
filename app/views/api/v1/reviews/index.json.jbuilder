json.array! @reviews do |review|
  json.id review.id
  json.body review.content
end
