class Customer < ActiveRecord::Base
  has_many :deals
	belongs_to :organization
end
