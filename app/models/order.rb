class Order < ApplicationRecord
  has_many :line_items
  belongs_to :client, class_name: :user
  belongs_to :cakewalker, class_name: :user
  belongs_to :cart
end
