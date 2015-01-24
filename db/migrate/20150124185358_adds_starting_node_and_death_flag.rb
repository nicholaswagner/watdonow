class AddsStartingNodeAndDeathFlag < ActiveRecord::Migration
  def change
  	add_column :stories, :start, :boolean, default: false
  	add_column :stories, :death, :boolean, default: false
  end
end
