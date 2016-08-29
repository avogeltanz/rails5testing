json.(@test_model, :id, :one, :three)

json.test_sub_models @test_model.test_sub_models do |tsm|
  json.id tsm.id
  json.two tsm.two
  json.four tsm.four
end