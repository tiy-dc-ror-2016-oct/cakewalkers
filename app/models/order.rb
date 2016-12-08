class Order < ApplicationRecord
  has_many :line_items
  belongs_to :client, class_name: :user
  belongs_to :cakewalker, class_name: :user
  belongs_to :cart
  validates :billing_street, presence: true
  validates :billing_city, presence: true
  validates :billing_state, presence: true
  validates :billing_zip, presence: true
  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :credit_card_number, presence: true
  validates :cc_expiration, presence: true
  validates :cc_code, presence: true

  def total_estimated_time_in_seconds
    bake_rounds = (line_items.size / 3.0).ceil
    max_line_items = line_items.max_by(bake_rounds) { |item| item.product.time_to_bake_in_seconds}
    max_line_items.map { |item| item.product.time_to_bake_in_seconds }.reduce(:+)
  end

end
