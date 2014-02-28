class Organization < ActiveRecord::Base

  has_many :users, dependent: :destroy
  has_many :artists, dependent: :destroy
  has_many :artworks, through: :artists
  # has_many :customers, dependent: :destroy

end
