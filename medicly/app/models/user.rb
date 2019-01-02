class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :name, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
  

  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :appointment_types, through: :appointments

  has_secure_password
end
