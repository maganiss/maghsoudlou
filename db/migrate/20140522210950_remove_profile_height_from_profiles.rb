class RemoveProfileHeightFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :profile_height, :integer
  end
end
