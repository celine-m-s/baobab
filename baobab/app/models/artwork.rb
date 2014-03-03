class Artwork < ActiveRecord::Base

	belongs_to :artist
  has_many :items

end
