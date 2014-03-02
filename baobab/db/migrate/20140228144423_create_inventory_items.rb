class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.belongs_to :artwork
      t.string :edition
      t.date :entry_date
      t.date :exit_date
      t.string :location

      t.timestamps
    end
  end
end
