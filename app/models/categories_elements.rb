class CategoriesElements < ActiveRecord::Base
	belongs_to :category
	belongs_to :element
end
