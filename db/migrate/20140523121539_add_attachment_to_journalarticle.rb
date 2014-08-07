class AddAttachmentToJournalarticle < ActiveRecord::Migration
  def self.up
    change_table :journalarticles do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :journalarticles, :attachment
  end
end
