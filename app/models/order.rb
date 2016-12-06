class Order < ApplicationRecord
  has_many :line_items
  belongs_to :client, source: :user
  belongs_to :cakewalker, source: :user
end
