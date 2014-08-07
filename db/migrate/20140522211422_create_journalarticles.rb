class CreateJournalarticles < ActiveRecord::Migration
  def change
    create_table :journalarticles do |t|
      t.integer :user_id
      t.string :title
      t.text :abstract
      t.string :en_field
      t.string :fa_field
      t.string :journal_name
      t.integer :journal_publishyear
      t.integer :journal_volume
      t.string :journal_pages

      t.timestamps
    end
  end
end
