class CreateAppointmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
