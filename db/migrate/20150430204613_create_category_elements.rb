class CreateCategoryElements < ActiveRecord::Migration
  def change
    create_table :category_elements do |t|
      t.integer :category_id
      t.integer :element_id

      t.timestamps null: false
    end
  end
end
