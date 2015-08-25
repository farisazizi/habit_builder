class Addcheckertotracks < ActiveRecord::Migration
  def change
    add_column :tracks, :checker, :integer
  end
end
