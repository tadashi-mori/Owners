class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  has_secure_password

  has_many :projects, through: :orders
  has_many :orders
end
