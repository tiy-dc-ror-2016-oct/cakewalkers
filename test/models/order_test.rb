require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "can create order and associate with client and cakewalker" do
    assert Order.create(client_id: users(:ben).id, cakewalker_id: (users(:alex).id))
  end
end
