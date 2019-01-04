class Appointment < ApplicationRecord
  validates :appointment_date, presence: true

  belongs_to :doctor
  belongs_to :user
  belongs_to :appointment_type
end
