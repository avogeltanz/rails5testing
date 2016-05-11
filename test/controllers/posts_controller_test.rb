require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Arrange/Given
    @post_one = posts(:one)
  end
  
  test "getting the first post" do
    # Act/When
    get post_url @post_one.id
    # Assert/Then
    assert_response :success
    assert_equal response.body, file_fixture('posts_first.json').read
  end

  test "getting the second post" do
    # Act/When
    get post_url @post_two.id
    # Assert/Then
    assert_response :success
    assert_equal response.body, file_fixture('posts_second.json').read
  end

end
