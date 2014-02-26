class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :vat_number
      t.belongs_to :organization

      t.timestamps
    end
  end
end
