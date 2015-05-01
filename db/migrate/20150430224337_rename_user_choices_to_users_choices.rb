class RenameUserChoicesToUsersChoices < ActiveRecord::Migration
  def self.up

 	rename_table :user_choices ,:users_choices
end

 def self.down
	rename_table  :users_choices , :user_choices
end
end
