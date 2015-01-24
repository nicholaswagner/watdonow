class Story < ActiveRecord::Base
	has_many :story_choices, :dependent => :destroy

	accepts_nested_attributes_for :story_choices, limit: 4, allow_destroy: true, reject_if: lambda { |attributes| 
		attributes['text'].blank?
	}

	validate :validate_options

	def validate_options
		if story_choices.size > 4
			errors.add(:story_choices, "too many options!")
		end
	end
end
