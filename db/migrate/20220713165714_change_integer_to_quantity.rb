class ChangeIntegerToQuantity < ActiveRecord::Migration[7.0]
  def up
    remove_column :orders, :integer
  end

  def down
    add_column :orders, :quantity, :integer
  end
end
