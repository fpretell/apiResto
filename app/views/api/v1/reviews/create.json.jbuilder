json.id @review.id
json.name @review.content
json.restaurant do
  json.id @review.restaurant.id
  json.name @review.restaurant.name
end
