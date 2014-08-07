class AddExpertScoreToConfarticles < ActiveRecord::Migration
  def change
    add_column :confarticles, :expert_score, :integer
  end
end
