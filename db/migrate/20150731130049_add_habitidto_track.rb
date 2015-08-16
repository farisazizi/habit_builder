class AddHabitidtoTrack < ActiveRecord::Migration
  def change
    add_reference :tracks, :habit, index: true
  end
end
