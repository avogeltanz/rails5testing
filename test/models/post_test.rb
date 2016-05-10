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

end
