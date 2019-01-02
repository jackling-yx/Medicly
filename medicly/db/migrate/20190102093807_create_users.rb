class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.date :birth_date
      t.string :gender
      t.string :allergies

      t.timestamps
    end
  end
end
