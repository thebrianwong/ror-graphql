module Types
  class CommentType < Types::BaseObject
    description "A comment"

    field :id, ID, null: false
    field :content, String
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :user, UserType
  end
end
