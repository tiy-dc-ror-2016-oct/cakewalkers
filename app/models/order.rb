class Order < ApplicationRecord
  has_many :line_items
  belongs_to :client, class_name: "User"
  accepts_nested_attributes_for :client
  belongs_to :cakewalker, class_name: "User"
  belongs_to :cart

  belongs_to :delivery_address, class_name: "Address"
  accepts_nested_attributes_for :delivery_address
  belongs_to :billing_address, class_name: "Address"
  accepts_nested_attributes_for :billing_address

  validates :full_name, presence: true
  validates :email, presence: true

  def total_estimated_time_in_seconds
    bake_rounds = (line_items.size / 3.0).ceil
    max_line_items = line_items.max_by(bake_rounds) { |item| item.product.time_to_bake_in_seconds }
    max_line_items.map { |item| item.product.time_to_bake_in_seconds }.reduce(:+)
  end

  def grouped_line_items
    line_items.group_by do |line_item|
      line_item.product
    end
  end

  def total
    line_items.sum(:total_sale_price_in_cents)
  end
end
