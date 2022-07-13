class ChangeCostomersToCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_table :costomers, :customers
  end
end
