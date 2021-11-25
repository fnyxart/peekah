class Dish < ApplicationRecord
  belongs_to :recipe
  belongs_to :restaurant
  validates :price, :restaurant_id, :is_available, :recipe_id, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1,
                                    message: 'Price must be greater than £0' }
end

#  validates :dish, uniqueness: { scope: :recipe :restaurant,
#                                  message: 'cannot have the same dish twice in a restauant' }
