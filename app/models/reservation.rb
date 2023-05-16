class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :startDate, :endDate, presence: true
end
