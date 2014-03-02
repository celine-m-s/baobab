class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.belongs_to :customer
      t.date :date
      t.float :price
      t.float :deposit
      t.date :due_date
      t.string :payment_type
      t.integer :invoice_number
      t.float :shipping_cost
      t.float :vat
      t.string :payment_status

      t.timestamps
    end
  end
end
