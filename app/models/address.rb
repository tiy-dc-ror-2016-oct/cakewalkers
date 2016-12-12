class Address < ApplicationRecord
  belongs_to :user
  belongs_to :credit_card
  has_many :orders, foreign_key: :delivery_address_id
  has_many :orders, foreign_key: :billing_address_id
end
