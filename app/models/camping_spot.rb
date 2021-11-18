class CampingSpot < ApplicationRecord
  belongs_to :host, foreign_key: :host_id, class_name: 'User'
  has_many :bookings
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
