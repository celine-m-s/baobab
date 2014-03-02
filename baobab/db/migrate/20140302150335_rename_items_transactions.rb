class RenameItemsTransactions < ActiveRecord::Migration
    def change
      rename_table :items_transactions, :items_deals
      rename_column :items_deals, :transaction_id, :deal_id
    end
end

