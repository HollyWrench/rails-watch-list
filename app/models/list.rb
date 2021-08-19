class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # destroy instead of delete so that all the destroy actions are enacted
  # e.g. the redirect route and notice
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true, allow_blank: false
end
