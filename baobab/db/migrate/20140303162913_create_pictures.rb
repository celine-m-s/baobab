class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :artwork
      t.attachment :picture
      t.timestamps
    end
  end
end
