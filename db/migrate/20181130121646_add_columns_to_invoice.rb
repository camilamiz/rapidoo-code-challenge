class AddColumnsToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :due_date, :date
    add_column :invoices, :rate, :decimal
    add_column :invoices, :receivable, :decimal
  end
end
