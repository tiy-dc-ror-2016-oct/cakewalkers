require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_order_path
    assert_response :success
    assert_select "form"
  end

  test "should get edit" do
    get edit_order_path()
    assert_response :success
  end

end
