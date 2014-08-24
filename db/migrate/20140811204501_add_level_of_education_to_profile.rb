class AddLevelOfEducationToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :level_of_education, :string
  end
end
