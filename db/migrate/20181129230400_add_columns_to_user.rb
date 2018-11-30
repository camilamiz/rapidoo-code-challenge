class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :company_name, :string
    add_column :users, :monthly_revenue, :integer
  end
end
