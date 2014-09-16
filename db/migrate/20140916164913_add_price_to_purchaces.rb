class AddPriceToPurchaces < ActiveRecord::Migration
  def change
    add_column :purchaces, :price, :decimal
  end
end
