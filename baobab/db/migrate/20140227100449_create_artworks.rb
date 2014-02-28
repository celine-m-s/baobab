class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :year
      t.boolean :on_website
      t.string :order_status
      t.text :bibliography
      t.text :condition_report
      t.string :edition_type
      t.string :provenance
      t.string :signature
      t.string :medium
      t.text :comment
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :estimation
      t.belongs_to :artist

      t.timestamps
    end
  end
end
