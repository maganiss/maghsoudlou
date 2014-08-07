class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :profile_name
      t.float :profile_height
      t.datetime :profile_birth_date
      t.integer :profile_gender
      t.float :profile_rank

      t.timestamps
    end
  end
end
