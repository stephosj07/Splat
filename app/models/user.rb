class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :camping_spots, foreign_key: :host_id
  has_many :bookings, foreign_key: :visitor_id
  has_many :host_bookings, through: :camping_spots, source: :bookings
end
