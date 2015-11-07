class AddUserIdCaretaker < ActiveRecord::Migration
  def change
    add_column :caregivers, :user_id, :integer
  end
end
