class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :timeLimit
      t.text :storyText
      t.string :backgroundImage
      t.string :characterImage
      t.boolean :final

      t.timestamps
    end
  end
end
