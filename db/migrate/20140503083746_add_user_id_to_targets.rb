class AddUserIdToTargets < ActiveRecord::Migration
  def self.up
    change_table :proposals do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :proposals, :attachment
  end
end
