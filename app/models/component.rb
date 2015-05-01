class Component < ActiveRecord::Base
	belongs_to :survey
	has_many :question
end
