class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :reminder_name
      t.datetime :date
      t.datetime :start_time
      t.integer :duration
      t.string :repetition
      t.boolean :notification
      t.boolean :completion

      t.timestamps null: false
    end
  end
end
