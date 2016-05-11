json.(@post, :title, :description)

unless @post.valid?
  json.error_messages @post.errors.messages.each do |field, message|
    json.field field
    json.message message
  end
end
