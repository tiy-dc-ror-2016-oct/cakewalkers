require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "can create order and associate with client and cakewalker" do
    assert Order.create(client_id: users(:ben).id, cakewalker_id: (users(:alex).id))
  end

  test "can know the estimated amount of time an order will take" do
    order = Order.find(orders(:first).id)
    assert_equal 4000, order.total_estimated_time_in_seconds
  end
end
