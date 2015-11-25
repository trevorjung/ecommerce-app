class RemoveInventoryfromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :inventory, :integer
  end
end
