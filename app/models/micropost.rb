class Micropost < ActiveRecord::Base
  belongs_to :user

  validates :user, :presence => true # validate User should be exists
  validates :user_id, :presence => true # validate require user_id
  validates :content, :presence => true

  default_scope :order => "created_at DESC" # order post newer come first
end
