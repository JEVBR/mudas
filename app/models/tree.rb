class Tree < ApplicationRecord
  belongs_to :line
  belongs_to :type
  has_many :betweens
  has_many :histories

  validates :planted, presence: true
  validates :position, presence: true
end
