class AdddatesColumnToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :newstart, :date
    add_column :tracks, :longdate, :date
  end
end
