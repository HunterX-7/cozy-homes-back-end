class House < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :style, :photo, :location, :description, presence: true
  validates :bedrooms, :bathrooms, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :garage, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :area, :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
