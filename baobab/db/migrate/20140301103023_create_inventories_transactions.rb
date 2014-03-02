class CreateInventoriesTransactions < ActiveRecord::Migration
  def change
    create_table :inventories_transactions, id: false do |t|
      t.integer :inventory_id
      t.integer :transaction_id

      t.timestamps
    end
  end
end
