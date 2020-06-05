class AddTagsToJoke < ActiveRecord::Migration[5.2]
  def change
  	add_column :jokes, :tags, :string
  end
end
