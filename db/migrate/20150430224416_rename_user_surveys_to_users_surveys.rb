class RenameUserSurveysToUsersSurveys < ActiveRecord::Migration
  def self.up

 	rename_table :user_surveys ,:users_surveys
end

 def self.down
	rename_table  :users_surveys , :user_surveys
end
end
	