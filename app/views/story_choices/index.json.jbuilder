json.array!(@story_choices) do |story_choice|
  json.extract! story_choice, :id, :text, :weight, :storyIndex
  json.url story_choice_url(story_choice, format: :json)
end
