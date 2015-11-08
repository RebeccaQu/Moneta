class AddDateToReminders < ActiveRecord::Migration
  def change
    add_column :reminders, :start_time, :integer
    add_column :reminders, :date, :date
  end
end
