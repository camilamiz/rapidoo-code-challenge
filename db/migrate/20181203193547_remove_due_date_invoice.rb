class RemoveDueDateInvoice < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :due_date
  end
end
