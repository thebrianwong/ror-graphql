module Resolvers
  class UserResolver < BaseResolver
    type [Types::UserType], null: true
    argument :id, ID, required: false
    argument :username, String, required: false
    argument :email, String, required: false

    def resolve(id: nil, username: nil, email: nil)
      user = User.find_by_id(id).find_by_username(username).find_by_email(email)
      user.nil? ? [] : user.includes(:comments).all
    end
  end
end
