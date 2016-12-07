class Order < ApplicationRecord
  has_many :line_items
  belongs_to :client, class_name: :user
  belongs_to :cakewalker, class_name: :user
  validates :billing_street, presence: true
  validates :billing_city, presence: true
  validates :billing_state, presence: true
  validates :billing_zip, presence: true
  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

end
