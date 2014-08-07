class AddExpertScoreToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :expert_score, :integer
  end
end
