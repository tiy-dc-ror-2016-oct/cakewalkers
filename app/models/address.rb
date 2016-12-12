class Address < ApplicationRecord
  belongs_to :user
  has_one :credit_card
end
