class CreateCustomersTable < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :id_card_number
    	t.belongs_to :organization

    	t.timestamps
    end
  end
end
