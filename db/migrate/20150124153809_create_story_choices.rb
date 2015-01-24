class CreateStoryChoices < ActiveRecord::Migration
  def change
    create_table :story_choices do |t|
      t.text :text
      t.integer :weight
      t.integer :storyIndex
      t.references :story

      t.timestamps
    end
  end
end
