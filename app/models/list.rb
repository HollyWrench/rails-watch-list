class List < ApplicationRecord
  validates :name, uniqueness: true
end
