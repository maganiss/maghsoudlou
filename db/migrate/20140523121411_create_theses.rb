class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.integer :user_id
      t.string :title
      t.string :fa_field
      t.string :en_field
      t.string :abstract
      t.string :professor
      t.attachment :attachment

      t.timestamps
    end
  end
end
