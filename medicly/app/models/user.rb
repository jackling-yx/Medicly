class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_secure_password
end
