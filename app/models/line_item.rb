class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  belongs_to :current_order
end
