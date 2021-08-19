class Bookmark < ApplicationRecord
  belongs_to :movie, :list
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scopre: :list }
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
end
