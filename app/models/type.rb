class Type < ApplicationRecord
  has_many :trees
  has_many :betweens

  validates :name, presence: true
end
