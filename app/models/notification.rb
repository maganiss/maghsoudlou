class Notification < ActiveRecord::Base
  belongs_to :user
  
  def self.find_friends_notifications(user)
    @friendships = user.friendships.find(:all)
    @friend_notifications = find(:all, :conditions => ["user_id IN (?)", @friendships.map { |m| "#{m.friend_id}" }], :order => 'created_at DESC')
  end
  
end
