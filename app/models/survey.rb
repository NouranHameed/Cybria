class Survey < ActiveRecord::Base
	has_many :components
	has_many :users
	
end
