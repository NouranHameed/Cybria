class AddComponentIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :component_id, :integer
  end
end
