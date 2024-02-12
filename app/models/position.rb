class Position < ApplicationRecord
  has_many :betweens
  validates :code, inclusion:
    {
      in: %w[inbetween beside traversed],
      message: "%{value} is not a valid code"
    }
end
