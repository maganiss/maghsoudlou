class AddExpertScoreToTechreports < ActiveRecord::Migration
  def change
    add_column :techreports, :expert_score, :integer
  end
end
