class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  has_many :products, dependent: :destroy
end
