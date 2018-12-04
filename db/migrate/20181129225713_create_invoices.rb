class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :invoice_value, delimiter: '.'
      t.integer :terms
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
