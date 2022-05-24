class User < ApplicationRecord
  has_many :midgets, dependent: :destroy
end
