class CurrentOrder < ApplicationRecord
  has_many :line_items
end
