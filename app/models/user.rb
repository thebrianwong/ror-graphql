class User < ApplicationRecord
  has_many :comments, dependent: :destroy

  scope :find_by_id, ->(id) { where(id: id) if id.present? }
  scope :find_by_username, ->(username) { where(username: username) if username.present? }
  scope :find_by_email, ->(email) { where(email: email) if email.present? }
end
