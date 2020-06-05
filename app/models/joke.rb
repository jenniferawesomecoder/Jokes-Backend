class Joke < ApplicationRecord
	has_many :collection_jokes
  has_many :collectiond_by, through: :collection_jokes, source: :list
end
