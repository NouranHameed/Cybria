class Question < ActiveRecord::Base
	belongs_to :sub_component
	has_many :choices
end
