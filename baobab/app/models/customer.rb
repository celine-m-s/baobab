class Customer < ActiveRecord::Base
  has_many :deals
end
