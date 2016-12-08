require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest

  def setup
    stub_request(
      :post,
      "https://cakewalkers-api.herokuapp.com/bake_jobs/3e46954c-627a-4afc-97cc-d9ae16f62d1e"
    ).to_return(
      :status => 200,
      :body => File.read("../helpers/response.txt"),
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

  test "should be able to create new order" do
    post orders_path, params: { order: { full_name: "Allie Rowan", email: "arowan@gmail.com", phone: "3015551234", billing_street: "1234 kenyon st", billing_city: "Washington", billing_state: "DC", billing_zip: "12345", credit_card_number: "13004-0123-1423", cc_expiration: Date.new, cc_code: "234" } }
    assert_response :redirect
    assert_equal "Allie Rowan", Order.last.full_name
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
    product = Product.first
    order = Order.create(full_name: "Allie Rowan", email: "arowan@gmail.com", phone: "3015551234", billing_street: "1234 kenyon st", billing_city: "Washington", billing_state: "DC", billing_zip: "12345", credit_card_number: "13004-0123-1423", cc_expiration: Date.new, cc_code: "234")
    order.line_items.build(product: product, quantity: 2)
    post orders_path, params: { full_name: "Allie Rowan", email: "arowan@gmail.com", phone: "3015551234", billing_street: "1234 kenyon st", billing_city: "Washington", billing_state: "DC", billing_zip: "12345", credit_card_number: "13004-0123-1423", cc_expiration: Date.new, cc_code: "234" }
  end
end
