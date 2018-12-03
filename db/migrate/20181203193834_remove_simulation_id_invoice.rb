class RemoveSimulationIdInvoice < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :simulation_id
  end
end
