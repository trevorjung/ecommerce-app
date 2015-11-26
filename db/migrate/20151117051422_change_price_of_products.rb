class ChangePriceOfProducts < ActiveRecord::Migration
  def change
    change_column :products, :price, 'numeric USING price::numeric(10,2)'
  end
end
