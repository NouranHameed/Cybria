class RenameCategoriesElementsTableToCategoryElements < ActiveRecord::Migration
def self.up

	rename_table :category_elements ,:categories_elements
end

def self.down
	rename_table  :categories_elements , :category_elements

end
end
