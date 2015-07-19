class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :habit_category, :null => false
      t.string :habit_title, :null => false
      t.text :habit_description
      t.integer :habit_duration
      
      t.timestamps null: false
    end
  end
end
