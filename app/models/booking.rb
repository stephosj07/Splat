class Booking < ApplicationRecord
  belongs_to :camping_spot
  belongs_to :visitor, foreign_key: :visitor_id, class_name: 'User'
  has_many :reviews, dependent: :destroy
end
