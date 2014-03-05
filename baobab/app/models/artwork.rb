class Artwork < ActiveRecord::Base
	belongs_to :artist

  has_many :items, autosave: true
  accepts_nested_attributes_for :items

	has_many :pictures, dependent: :destroy
	accepts_nested_attributes_for :pictures

end
