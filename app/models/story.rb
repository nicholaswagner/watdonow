class Story < ActiveRecord::Base
	has_many :story_choices, :dependent => :destroy
	accepts_nested_attributes_for :story_choices, reject_if: lambda {|attributes| attributes['text'].blank?}
end
