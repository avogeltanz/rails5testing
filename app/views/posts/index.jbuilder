json.array! @posts do |post|
  json.title post.title
  json.description post.description
end
