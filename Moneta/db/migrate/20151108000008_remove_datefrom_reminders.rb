class RemoveDatefromReminders < ActiveRecord::Migration
  def change
    remove_column :reminders, :date
    remove_column :reminders, :start_time
  end
end
