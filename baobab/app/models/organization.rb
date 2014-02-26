class Organization < ActiveRecord::Base

  has_many :users, dependent: :destroy
  has_many :artists, dependent: :destroy

end
