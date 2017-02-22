class Review < ApplicationRecord
  belongs_to :restaurant, inverse_of: :reviews
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to:5 }
  # validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
end
