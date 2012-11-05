class User < ActiveRecord::Base
  has_many :microposts

  has_many :relationships, :foreign_key => :follower_id
  has_many :following_users, :through => :relationships, :source => :following

  has_many :reverse_relationships, :class_name => "Relationship", :foreign_key => :following_id
  has_many :follower_users, :through => :reverse_relationships, :source => :follower

  acts_as_authentic

  validates :name, :presence => true
  validates :email, :presence => true

  def feed
    # get all post from following users included self post
        monitored_user_id = following_users.map(&:id) << self.id
        Micropost.where(:user_id => monitored_user_id)
  end

  def following?(user)
    relationships.exists?(:following_id => user)
  end

  def follow(user_id)
    relationships.create(:following_id => user_id)
  end

  def unfollow(user_id)
    relationships.find_by_following_id(user_id).destroy
  end

end
