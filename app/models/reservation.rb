class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :user_id, :house_id, presence: true
  validate :startDate_less_than_endDate

  def startDate_less_than_endDate
    return unless startDate && endDate && startDate > endDate

    errors.add(:endDate, "endDate can't be earlier than startDate")
  end
end
