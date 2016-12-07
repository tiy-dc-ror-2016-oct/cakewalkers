require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  test "can create line item" do
    post line_items_path, params: { }
  end

  # test "can delete line item" do
  #
  # end
  #
  # test "can get line item update view" do
  #
  # end
  #
  # test "can update line item" do
  #
  # end
end
