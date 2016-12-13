require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "can update product" do
    new_session(users(:ben))
    users(:ben).roles << Role.find_by(name: "admin")
    patch product_path(products(:cake).id), params: { product: { for_sale: false }}
    assert_equal false, Product.find(products(:cake).id).for_sale
  end
end
