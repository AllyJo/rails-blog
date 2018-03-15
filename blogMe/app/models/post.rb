class Post < ApplicationRecord
  has_many :comments
  has_many :user_posts
  has_many :users, through: :user_posts

  belongs_to :creator, class_name: 'User'

  validates :title, :body, presence: true
end
