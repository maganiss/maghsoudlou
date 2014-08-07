class AddExpertScoreToProgressreports < ActiveRecord::Migration
  def change
    add_column :progressreports, :expert_score, :integer
  end
end
