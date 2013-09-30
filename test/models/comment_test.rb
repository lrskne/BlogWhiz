require "test_helper"

class CommentTest < ActiveSupport::TestCase

  def setup
    @comment = Comment.new
  end

  def test_valid
    assert @comment.valid?
  end

end
