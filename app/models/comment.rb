class Comment < ActiveRecord::Base
belongs_to :user
belongs_to :commentable, :polymorphic => true
belongs_to :status, :class_name => "Status", :foreign_key => "commentable_id"
belongs_to :emotion, :class_name => "Emotion", :foreign_key => "commentable_id"
belongs_to :target, :class_name => "Target", :foreign_key => "commentable_id"
end
