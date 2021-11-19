class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  validates :content, presence: true
end
