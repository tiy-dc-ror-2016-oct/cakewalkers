class Cart < ApplicationRecord
  has_one :order
  has_many :line_items
end
