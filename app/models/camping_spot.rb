class CampingSpot < ApplicationRecord
  belongs_to :host, foreign_key: :host_id, class_name: 'User'
  has_many :bookings
end
