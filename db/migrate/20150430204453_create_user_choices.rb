class CreateUserChoices < ActiveRecord::Migration
  def change
    create_table :user_choices do |t|
      t.integer :user_id
      t.integer :survey_id

      t.timestamps null: false
    end
  end
end
