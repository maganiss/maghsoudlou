class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.integer :user_id
      t.string :title
      t.string :fa_field
      t.string :en_field
      t.string :abstract
      t.string :creator
      t.attachment :attachment

      t.timestamps
    end
  end
end
