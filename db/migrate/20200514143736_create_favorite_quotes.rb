class CreateFavoriteJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_jokes do |t|
    	t.integer :joke_id
      t.integer :list_id
      t.timestamps
    end
  end
end
