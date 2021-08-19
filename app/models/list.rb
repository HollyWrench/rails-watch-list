class List < ApplicationRecord
  has_many :bookmarks, :movies
  validates :name, uniqueness: true
end
