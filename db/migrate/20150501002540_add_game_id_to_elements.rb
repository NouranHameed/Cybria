class AddGameIdToElements < ActiveRecord::Migration
  def change
    add_column :elements, :game_id, :integer
  end
end
