class History < ApplicationRecord
  belongs_to :tree, optional: true
  belongs_to :between, optional: true
  validates :body, presence: true

  validate :must_have_one_key

  # private

  def must_have_one_key
    return if tree.nil? ^ between.nil?
    
    errors.add(:history, 'must have at least one of tree or between foreign key')
  end
end
