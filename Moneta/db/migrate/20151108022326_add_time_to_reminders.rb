class AddTimeToReminders < ActiveRecord::Migration
  def change
    remove_column :reminders, :start_time 
    add_column :reminders, :start_time, :datetime
  end
end
