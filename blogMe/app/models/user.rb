class User < ApplicationRecord
  has_secure_password
  has_many :user_posts
  has_many :comments
  has_many :created_posts, class_name: 'Post', foreign_key: :creator_id

  validates :username, :email, presence: true, uniqueness: true
end
