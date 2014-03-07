class Organization < ActiveRecord::Base

  # Dependent destroys
  has_many :users, dependent: :destroy
  has_many :artists, dependent: :destroy
  has_many :items, dependent: :destroy

  has_many :artworks, through: :artists
  has_many :customers, dependent: :destroy

  validates :organizationslug, format: { with: /^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*$/,
     message: "lettres ou tirets uniquement", multiline: true }, presence: true

end
