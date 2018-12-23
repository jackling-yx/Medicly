class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.integer :appointment_type_id
      t.string :note
      t.date :appointment_date

      t.timestamps
    end
  end
end
