class AddGradstatToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_gradstat, :string
  end
end
