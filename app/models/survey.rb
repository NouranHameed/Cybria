class Survey < ActiveRecord::Base
	has_many :sub_components
	has_and_belongs_to_many :user
	
end
