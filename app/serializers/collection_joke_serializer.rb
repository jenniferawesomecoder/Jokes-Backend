class CollectionJokeSerializer < ActiveModel::Serializer
  attributes :group_id, :joke_id

  belongs_to :group
  belongs_to :joke
end
