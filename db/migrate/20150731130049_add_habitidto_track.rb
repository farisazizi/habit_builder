class AddHabitidtoTrack < ActiveRecord::Migration
  def change
    add_reference :track, :habit, index: true
  end
end
