class Midget < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  validates :name, :speciality, :price, :description, :city, presence: true
end
