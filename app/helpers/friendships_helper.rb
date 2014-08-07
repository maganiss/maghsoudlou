module FriendshipsHelper
  def friends_with?(user1,user2)
    if !Friendship.find(:first, :conditions => ["user_id = ? and friend_id = ?",user1.id, user2.id]).blank?
      return true
    else
      return false
    end
  end
end
