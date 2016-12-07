class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :roles
  has_many :orders, foreign_key: :client_id
  has_many :orders, foreign_key: :cakewalker_id
  validates :email, uniqueness: true
end
