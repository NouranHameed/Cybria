class DropCategoriesElementsTable < ActiveRecord::Migration
  def up
    drop_table :categories_elements
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
