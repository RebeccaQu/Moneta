class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :medication_name
      t.string :brand
      t.string :dose
      t.string :route
      t.string :frequency
      t.date :refill_date
      t.integer :refill_days
      t.string :prescriber
      t.string :dispenser
      t.string :diagnosis

      t.timestamps null: false
    end
  end
end
