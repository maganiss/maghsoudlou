class AddAttachmentToConfarticle < ActiveRecord::Migration
  def self.up
    change_table :confarticles do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :confarticles, :attachment
  end
end
