class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true,
                                    :greater_than_or_equal_to => 0,
                                    :less_than_or_equal_to => 5 }
  validates :restaurant_id, presence: true
end
