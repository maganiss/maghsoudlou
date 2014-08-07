class AddAttachmentToProgressreport < ActiveRecord::Migration
  def self.up
    change_table :progressreports do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :progressreports, :attachment
  end
end
