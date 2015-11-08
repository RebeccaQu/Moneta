class AddUserIdToMedication < ActiveRecord::Migration
  def change
      add_column :medications, :user_id, :integer
  end
end
