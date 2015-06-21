class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :habit_title, :null => false
      t.string :habit_description
      t.integer :days_practised
      t.integer :practise_streak
      t.boolean :habit_done

      t.timestamps null: false
    end
  end
end
