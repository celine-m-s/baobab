class Artwork < ActiveRecord::Base
	belongs_to :artist
  has_many :items, autosave: true
  accepts_nested_attributes_for :items
end
