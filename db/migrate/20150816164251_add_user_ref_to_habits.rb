class AddUserRefToHabits < ActiveRecord::Migration
  def change
    add_reference :habits, :user, index: true
    add_foreign_key :habits, :users
  end
end
