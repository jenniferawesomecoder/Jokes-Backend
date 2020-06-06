class CreateCollectionJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :collection_jokes do |t|
    	t.integer :joke_id
      t.integer :group_id
      t.timestamps
    end
  end
end
