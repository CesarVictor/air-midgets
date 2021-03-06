class Midget < ApplicationRecord
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  validates :name, :speciality, :price, :description, :city, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_speciality,
    against:[ :name,
              :speciality],
    using: {
      tsearch: { prefix: true }
    }
end
