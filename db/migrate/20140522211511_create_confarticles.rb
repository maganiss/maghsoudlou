class CreateConfarticles < ActiveRecord::Migration
  def change
    create_table :confarticles do |t|
      t.integer :user_id
      t.string :title
      t.text :abstract
      t.string :en_field
      t.string :fa_field
      t.string :conf_name
      t.date :conf_date
      t.string :conf_location

      t.timestamps
    end
  end
end
