class RenameInventoriesTransactions < ActiveRecord::Migration
    def change
        rename_table :inventories_transactions, :inventory_items_transactions
    end
 end