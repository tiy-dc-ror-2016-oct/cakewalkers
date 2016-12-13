require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  test "can create line item" do
    get products_path
    post line_items_path, params: { line_item: { quantity: 17 } }
    assert_equal 17, LineItem.last.quantity
  end

  test "can delete line item" do
    get products_path
    post line_items_path, params: { line_item: { quantity: 17 } }
    assert_equal 6, LineItem.count
    delete line_item_path(LineItem.last.id)
    assert_equal 5, LineItem.count
  end
end
