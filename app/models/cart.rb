class Cart < ApplicationRecord
  has_many :line_items

  def grouped_line_items
    line_items.group_by do |line_item|
      line_item.product
    end
  end

  def total
    line_items.sum(:total_sale_price_in_cents)/100
  end
end
