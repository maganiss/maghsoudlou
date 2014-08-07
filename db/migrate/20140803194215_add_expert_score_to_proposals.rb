class AddExpertScoreToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :expert_score, :integer
  end
end
