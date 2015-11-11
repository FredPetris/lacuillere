class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :restaurant_id, presence: true
end
