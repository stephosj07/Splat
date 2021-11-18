class CampingSpot < ApplicationRecord
  belongs_to :host, foreign_key: :host_id, class_name: 'User'
  has_many :bookings
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  include PgSearch::Model
  pg_search_scope :search_by_title_and_location_and_description,
    against: [ :title, :location, :description ],
    using: {
      tsearch: { prefix: true }
    }

  validates :title, :location, :photos, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, :capacity, numericality: { only_integer: true }
end
