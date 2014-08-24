class AddEntranceYearToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :entrance_year, :integer
  end
end
