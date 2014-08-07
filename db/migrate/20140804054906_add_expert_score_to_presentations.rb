class AddExpertScoreToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :expert_score, :integer
  end
end
