class CreateCategoriesElements < ActiveRecord::Migration
  def change
    create_table :categories_elements do |t|
      t.integer :element_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
