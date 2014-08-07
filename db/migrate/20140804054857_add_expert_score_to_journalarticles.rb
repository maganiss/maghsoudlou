class AddExpertScoreToJournalarticles < ActiveRecord::Migration
  def change
    add_column :journalarticles, :expert_score, :integer
  end
end
