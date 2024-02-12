class Line < ApplicationRecord
  has_many :trees

  validates :name, presence: true
end
