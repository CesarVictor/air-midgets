class Midget < ApplicationRecord
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  validates :name, :speciality, :price, :description, :city, presence: true
end
