require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest

  def setup
    stub_request(
      :post,
      "http://localhost:1234/bake_jobs/3e46954c-627a-4afc-97cc-d9ae16f62d1e"
    ).to_return(
      :status => 200,
      :body => File.read("test/helpers/response.txt"),
      :headers => { 'Content-Type' => 'application/json' }
    )
  end

  test "should get new" do
    get new_order_path
    assert_response :success
    assert_select "form"
  end

  test "should get edit" do
    get edit_order_path(orders(:first).id)
    assert_response :success
    assert_select "form"
  end

  test "should be able to update an order" do
    order_id = orders(:first).id
    patch order_path(order_id), params: { order: { full_name: "Dis Guy" } }
    assert_response :redirect
    assert_equal "Dis Guy", Order.find(order_id).full_name
  end

  test "should be able to destroy" do
    order_id = orders(:first).id
    delete order_path(order_id)
    refute Order.find_by(id: order_id)
  end

  test "can post new bake job" do
    get products_path
    current_cart = Cart.find(session[:current_cart_id])
    current_cart.line_items.create!(product: Product.first, quantity: 2)
    post orders_path, params: { order: { full_name: "Allie Rowan", email: "arowan@gmail.com", phone: "3015551234", billing_street: "1234 kenyon st", billing_city: "Washington", billing_state: "DC", billing_zip: "12345", credit_card_number: "13004-0123-1423", cc_expiration: Date.new, cc_code: "234" } }
    assert_equal 1, Order.last.line_items.size
    assert_equal 1, Order.last.line_items.last.bake_job_id
  end
end
