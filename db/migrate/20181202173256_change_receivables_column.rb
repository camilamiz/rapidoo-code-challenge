class ChangeReceivablesColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :invoices, :receivable, :decimal, precision: 12, scale: 2
  end
end
