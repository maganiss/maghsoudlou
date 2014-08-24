class AddSubFieldToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :sub_field, :string
  end
end
