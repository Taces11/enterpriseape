class CreatePurchaces < ActiveRecord::Migration
  def change
    create_table :purchaces do |t|
      t.string :name
      t.string :catagory
      t.integer :quantity
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
