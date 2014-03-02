class RenameInventoryItemsAndInventoryItemsTransactions < ActiveRecord::Migration
    def change
      rename_table :inventory_items, :items
      rename_column :inventory_items_transactions, :inventory_id, :item_id
      rename_table :inventory_items_transactions, :items_deals
    end
end

