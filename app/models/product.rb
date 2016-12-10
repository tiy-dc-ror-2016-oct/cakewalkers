class Product < ApplicationRecord
  has_one :line_item

  def self.featured
    Product.where("featured").first
  end
end
