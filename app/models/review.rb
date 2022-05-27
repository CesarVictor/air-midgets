class Review < ApplicationRecord
  belongs_to :midget
  validates :comment, length: { minimum: 10 }
  validates :rating, numericality: { greater_than: 0, less_than: 6 }
end
