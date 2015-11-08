class AddDateToReminders < ActiveRecord::Migration
  def change
    remove_column :reminders, :date 
    add_column :reminders, :date, :datetime
  end
end
