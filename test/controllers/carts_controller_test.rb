require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "can create cart and assign to sesssion" do
    get products_path
    assert session[:current_cart_id] = Cart.last.id
  end

  test "can add items to cart" do
    get products_path
    post line_items_path, params: { line_item: {total_sale_price_in_cents: 100} }
    assert_equal 1, Cart.find(session[:current_cart_id]).line_items.size
  end
end
