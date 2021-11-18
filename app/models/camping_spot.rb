class CampingSpot < ApplicationRecord
  belongs_to :host, foreign_key: :host_id, class_name: 'User'
  has_many :bookings
  has_many_attached :photos

  validates :title, :location, :photos, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, :capacity, numericality: { only_integer: true }
end
