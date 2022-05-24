class Reservation < ApplicationRecord
  belongs_to :midget
  belongs_to :user

  validates :start_date, :end_date, :price, :total, presence: true
end
