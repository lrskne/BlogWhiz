require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(email: "lbe3@live.com", password: "abc", password_confirmation: "abc")
  end

  def test_valid
    assert @user.valid?
  end

end
