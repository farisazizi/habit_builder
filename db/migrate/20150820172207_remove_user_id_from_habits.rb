class RemoveUserIdFromHabits < ActiveRecord::Migration
  def change
    remove_column :habits, :user_id, :integer
  end
end
