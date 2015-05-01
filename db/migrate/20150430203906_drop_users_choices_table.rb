class DropUsersChoicesTable < ActiveRecord::Migration
  def up
    drop_table :users_choices
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
