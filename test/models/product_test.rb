require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "can create product" do
    assert Product.create(unit_price_in_cents: 1000, for_sale: true)
  end
end
