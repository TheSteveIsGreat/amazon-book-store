class Author < ApplicationRecord
  #Deletes all songs for a given artist when that artist
  #is destroyed
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
