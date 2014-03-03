class Artwork < ActiveRecord::Base
	belongs_to :artist
	has_many :pictures
	accepts_nested_attributes_for :pictures
end
