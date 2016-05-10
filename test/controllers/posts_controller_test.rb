require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  
  test "getting the first post" do
    # Act/When
    get post_url @post_one.id
    # Assert/Then
    assert_response :success
  end

end
