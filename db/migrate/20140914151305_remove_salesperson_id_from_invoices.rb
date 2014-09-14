class RemoveSalespersonIdFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :salesperson_id, :integer
  end
end
