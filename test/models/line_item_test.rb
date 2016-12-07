require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  test "can create line item and associate with order and product" do
    assert LineItem.create(
    order_id: orders(:first).id,
    product_id: products(:cake).id),
    quantity: 2,
    unit_sale_price: 1000,
    total_sale_price_in_cent: 2000,
    estimated_bake_time_in_seconds: 1800
  end
end
