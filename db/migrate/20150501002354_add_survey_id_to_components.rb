class AddSurveyIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :survey_id, :integer
  end
end
