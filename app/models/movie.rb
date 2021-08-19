class Movie < ApplicationRecord
  has_many :lists
  validates :title, uniqueness: true
end
