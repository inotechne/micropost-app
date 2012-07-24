class User < ActiveRecord::Base
  has_many :microposts

  has_many :relationships, :foreign_key => :follower_id
  has_many :following_users, :through => :relationships, :source => :following

  has_many :reverse_relationships, :class_name => "Relationship", :foreign_key => :following_id
  has_many :follower_users, :through => :reverse_relationships, :source => :follower
end
