class Presentation < ActiveRecord::Base
belongs_to :user
has_many :likes, :as => :likable, :dependent => :destroy
has_many :comments, :as => :commentable, :dependent => :destroy
after_create :set_notification
before_destroy :destroy_notification
has_attached_file :attachment
validates_attachment_content_type :attachment, :content_type => ['application/pdf']
validates_presence_of :title, :fa_field, :abstract, :creator, :attachment

def set_notification
 Notification.create(:notifiable_type => 'Presentation', :notifiable_id => self.id, :user_id => self.user_id  )
end
end
