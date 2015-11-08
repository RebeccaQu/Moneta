class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :email
      t.string :phone_number
      t.string :relationship
      t.timestamps null: false
    end
  end
end
