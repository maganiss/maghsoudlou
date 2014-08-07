class AddAttachmentToTechreport < ActiveRecord::Migration
  def self.up
    change_table :techreports do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :techreports, :attachment
  end
end
