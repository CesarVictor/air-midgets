class Review < ApplicationRecord
  belongs_to :midget
  validates :comment, length: { minimum: 10 }
end
