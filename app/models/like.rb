class Like < ActiveRecord::Base
belongs_to :user
belongs_to :likable, :polymorphic => true
belongs_to :status, :class_name => "Status", :foreign_key => "likable_id"
belongs_to :emotion, :class_name => "Emotion", :foreign_key => "likable_id"
belongs_to :target, :class_name => "Target", :foreign_key => "likable_id"
end
