class CreateUsersChoices < ActiveRecord::Migration
  def change
    create_table :users_choices do |t|
      t.integer :user_id
      t.integer :choice_id

      t.timestamps null: false
    end
  end
end
