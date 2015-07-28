class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.boolean :answer

      t.timestamps null: false
    end
  end
end
