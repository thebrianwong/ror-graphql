module Resolvers
  class UserResolver < BaseResolver
    type [Types::UserType], null: true
    argument :id, ID, required: false
    argument :username, String, required: false

    def resolve(id: nil, username: nil)
      if !id.nil? && !username.nil?
        user = User.find_by(id: id, username: username)
        user.nil? ? [] : [user]
      elsif !id.nil?
        user = User.find_by(id: id)
        user.nil? ? [] : [user]
      elsif !username.nil?
        user = User.find_by(username: username)
        user.nil? ? [] : [user]
      else
        User.all
      end
    end
  end
end
