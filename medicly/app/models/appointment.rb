class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :appointment_type
end
