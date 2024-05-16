# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  {
    username: "some guy",
    email: "guy@guy.com"
  },
  {
    username: "chronicallyOnline",
    email: "example@example.com"
  },
  {
    username: "billy bob",
    email: "lol@lol.com"
  }
].each do |user|
  new_user = User.find_or_create_by!(username: user[:username], email: user[:email])
  ["wow very cool", "jk this sucks", "dont ban me"].each do |comment|
    new_user.comments.find_or_create_by(content: comment)
  end
end
