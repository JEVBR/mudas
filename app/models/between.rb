class Between < ApplicationRecord
  belongs_to :type
  belongs_to :position
  belongs_to :tree
  has_many :histories
end
