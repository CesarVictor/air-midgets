class Midget < ApplicationRecord
  belongs_to :user

  validates :name, :speciality, :price, :description, :city, presence: true
end
