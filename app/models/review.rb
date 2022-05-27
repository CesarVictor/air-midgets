class Review < ApplicationRecord
  belongs_to :midget
  validates :content, length: { minimum: 10 }
end
