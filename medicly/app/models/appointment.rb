class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
  belongs_to :appointment_type
end
