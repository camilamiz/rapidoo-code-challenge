class AddSavedInvoiceBoolean < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :saved, :boolean, default: false
  end
end
