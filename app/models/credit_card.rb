class CreditCard < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_many :orders
end
