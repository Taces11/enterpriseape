class RemoveCatagoryFromPurchaces < ActiveRecord::Migration
  def change
    remove_column :purchaces, :catagory, :string
    add_column :purchaces, :category, :string
  end
end
