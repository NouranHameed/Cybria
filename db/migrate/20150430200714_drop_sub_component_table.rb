class DropSubComponentTable < ActiveRecord::Migration
  def up
    #drop_table :sub_components
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
