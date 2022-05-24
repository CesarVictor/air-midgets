class User < ApplicationRecord
  has_many :midgets, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
