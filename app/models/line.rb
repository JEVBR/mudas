class Line < ApplicationRecord
  has_many :trees
  validates :name, presence: true
  validates :sequence, numericality: { only_integer: true }
  validates :spacing, numericality: { only_integer: true }
end
