class CreateTechreports < ActiveRecord::Migration
  def change
    create_table :techreports do |t|
      t.integer :user_id
      t.string :title
      t.text :abstract
      t.string :en_field
      t.string :fa_field

      t.timestamps
    end
  end
end
