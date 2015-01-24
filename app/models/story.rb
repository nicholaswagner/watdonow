class Story < ActiveRecord::Base
	has_many :story_choices
end
