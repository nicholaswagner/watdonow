json.array!(@stories) do |story|
  json.extract! story, :id, :timeLimit, :storyText, :backgroundImage, :characterImage, :final
  json.url story_url(story, format: :json)
end
