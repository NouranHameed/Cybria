class DropUsersSurveysTable < ActiveRecord::Migration
  def up
    drop_table :users_surveys
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
