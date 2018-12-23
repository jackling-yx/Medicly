class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.date :birth_date
      t.string :gender
      t.string :allergies

      t.timestamps
    end
  end
end
