class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5 }
end
