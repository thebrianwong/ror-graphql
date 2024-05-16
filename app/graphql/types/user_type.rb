module Types
  class UserType < Types::BaseObject
    description "A user"

    field :id, ID, null: false
    field :username, String
    field :email, String
    field :created_at, GraphQL::Types::ISO8601DateTime
    field :updated_at, GraphQL::Types::ISO8601DateTime
    field :comments, [Types::CommentType]
  end
end
