class Artwork < ActiveRecord::Base
	belongs_to :artist
	has_many :pictures, dependent: :destroy
	accepts_nested_attributes_for :pictures
	
end
