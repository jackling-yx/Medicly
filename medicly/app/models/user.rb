class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :name, presence: true
  validates :birth_date, presence: true
  validates :gender, presence: true
  validate :validate_birthday


  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :appointment_types, through: :appointments

  has_secure_password

  private

  def validate_birthday
    if birth_date.present? && birth_date > DateTime.now.to_date
      errors.add(:birth_date, ": Please enter a valid date of birth.")
    end
  end

end
