class AddTargetAmountToTargets < ActiveRecord::Migration
  def change
    add_column :targets, :target_amount, :float
  end
end
