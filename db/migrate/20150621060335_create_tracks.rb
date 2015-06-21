class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :date
      t.integer :streak
      t.boolean :habit_done

      t.timestamps null: false
    end
  end
end
