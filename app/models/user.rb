class User < ActiveRecord::Base
  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile
  has_many :comments
  has_many :likes
  has_many :statuses
  has_many :targets
  has_many :emotions
  has_many :notifications
  has_many :consultations
  has_many :friendships
  has_many :friends , :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendship, :source => :user
  
end
