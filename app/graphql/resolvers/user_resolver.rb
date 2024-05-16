module Resolvers
  class UserResolver < BaseResolver
    type [Types::UserType], null: true
    argument :id, ID, required: false
    argument :username, String, required: false

    def resolve(id: nil, username: nil)
      user = User.find_by_id(id).find_by_username(username)
      user.nil? ? [] : user.includes(:comments).all
    end
  end
end
