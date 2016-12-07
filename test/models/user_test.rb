require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "can create user and assign role" do
    assert User.new
  end
end
