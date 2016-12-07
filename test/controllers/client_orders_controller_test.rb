require 'test_helper'

class ClientOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get client_order_path(orders(:first))
    assert_response :success
  end

end
