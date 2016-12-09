class Address < ApplicationRecord
  belongs_to :user
  has_many :orders, foreign_key: :delivery_address_id
  has_many :orders, foreign_key: :billing_address_id
end
