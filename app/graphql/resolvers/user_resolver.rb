module Resolvers
  class UserResolver < BaseResolver
    type [Types::UserType], null: true
    argument :id, ID, required: false
    argument :username, String, required: false

    def resolve(id: nil, username: nil)
      if id.nil? && username.nil?
        User.includes(:comments).all
      else
        args = {}
        unless id.nil?
          args[:id] = id
        end
        unless username.nil?
          args[:username] = username
        end
        user = User.includes(:comments).find_by(args)
        user.nil? ? [] : [user]
      end
    end
  end
end
