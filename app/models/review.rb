class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates_numericality_of :rating, only_integer: true
end
