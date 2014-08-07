class RemoveProfileRankFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :profile_rank, :integer
  end
end
