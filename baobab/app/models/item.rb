class Item < ActiveRecord::Base
  has_and_belongs_to_many :deals
  belongs_to :artwork
end
