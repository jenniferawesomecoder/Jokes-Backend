class Group < ApplicationRecord
	has_many :collection_jokes
  has_many :collections, through: :collection_jokes, source: :joke
end
