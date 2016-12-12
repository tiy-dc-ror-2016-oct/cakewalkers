class CreditCard < ApplicationRecord
  belongs_to :user
  belongs_to :billing_address, class_name: "Address"
  accepts_nested_attributes_for :billing_address
  has_many :orders
end
