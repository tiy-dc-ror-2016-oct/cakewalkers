require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "confirm_order" do
    mail = OrderMailer.confirm_order(Order.last)
    assert_equal "Order Reciept from Cakewalkers", mail.subject
    assert_equal ["amax3002@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
  end
end
