json.array!(@stories) do |story|
  #json.extract! story, :id, :timeLimit, :storyText, :backgroundImage, :characterImage, :final
  #json.url story_url(story, format: :json)

  json.id story.id
  json.time_limit story.timeLimit
  json.story_text story.storyText
  json.background_image story.backgroundImage
  json.character_image story.characterImage
  json.final story.final
  json.start story.start
  json.death story.death

  json.choices story.story_choices do |choice|
  	json.choice_id choice.id
  	json.text choice.text
  	json.weight choice.weight
  	json.destination_index choice.storyIndex
  	end

end
