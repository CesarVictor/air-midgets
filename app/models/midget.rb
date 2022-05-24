class Midget < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, :speciality, :price, :description, :city, presence: true
end
