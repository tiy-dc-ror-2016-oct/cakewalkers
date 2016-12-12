class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :roles
  has_many :orders, foreign_key: :client_id
  has_many :orders, foreign_key: :cakewalker_id
  validates :email, uniqueness: true
  has_one :address
  accepts_nested_attributes_for :address

  def admin?
    roles_array = []
    self.roles.map { |x| roles_array << x.name }
    if roles_array.include? "admin"
      return true
    end
  end

  def cakewalker?
    roles_array = []
    self.roles.map { |x| roles_array << x.name }
    if roles_array.include? "cakewalker"
      return true
    end
  end
end
