require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "creating a post" do
    # Arrange/Given
    post = Post.new    
    post.title = "Focus"    
    post.description = "Jared"
    # Act/When Assert/Then
    assert post.save
  end

  test "an invalid model" do
    # Arrange/Given
    post = Post.new    
    # Act/When 
    post.valid?
    # Assert/Then
    assert_equal post.errors[:title], ["can't be blank"]
    assert_equal post.errors[:description], ["can't be blank", "pick a longer description"]
  end

end
