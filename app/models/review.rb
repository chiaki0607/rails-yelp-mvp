class Review < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATING }
  validates :content, presence: true
end
