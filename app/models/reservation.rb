class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :user_id, :house_id, presence: true
  validate :start_date_less_than_end_date

  def start_date_less_than_end_date
    return unless startDate && endDate && startDate > endDate

    errors.add(:endDate, "endDate can't be earlier than startDate")
  end
end
