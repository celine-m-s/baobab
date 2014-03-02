class Artist < ActiveRecord::Base

	belongs_to :organization
	has_many :artworks

end
