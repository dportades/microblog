class User < ActiveRecord::Base
  has_one :account
  has_many :posts

  has_many :friendings, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :friends, through: :friendings

  has_many :followings, class_name: "Relationship", foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :followings


  def follow(followed_id)
    Relationship.create(follower_id: id, followed_id: followed_id)
  end
end


class Account < ActiveRecord::Base
  belongs_to :user
end


class Post < ActiveRecord::Base
  belongs_to :user

  # This is a callback,  it runs a method every time a certain thing happens
  before_save :set_blog_post_date

  def set_blog_post_date
    self.blog_post_date = Time.now
  end
end


class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :friend, class_name: "User", foreign_key: :followed_id
  validates_uniqueness_of :follower_id, scope: :followed_id
end
