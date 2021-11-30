class Dish < ApplicationRecord
  # Associations
  belongs_to :recipe
  belongs_to :restaurant
  # Cloudinary
  has_one_attached :photo
  # Validations
  validates :price, :restaurant_id, :is_available, :recipe_id, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1,
                                    message: 'Price must be greater than £0' }
  validates :restaurant, uniqueness: { scope: :recipe,
                                       message: 'Dish already exists in that restaurant' }

  def calories
    self.recipe.calculate_recipe_calories
  end

  def carbs
    self.recipe.calculate_carb_content
  end

  def carb_cals
    carbs.to_i * 4
  end

  def protein
    self.recipe.calculate_protein_content
  end

  def protein_cals
    protein.to_i * 4
  end

  def fat
    self.recipe.calculate_fat_content
  end

  def fat_cals
    fat.to_i * 9
  end

  def total_macros
    total = self.fat + self.protein + self.carbs
    {fat: ((100 * self.fat)/total).round(1),
     protein: ((100 * self.protein)/total).round(1),
     carbs: ((100 * self.carbs)/total).round(1) }
  end

  def allergens
    dish_allergens = []
    self.recipe.ingredients.each do |ingredient|
      dish_allergens << ingredient.identify_allergens
    end
    p dish_allergens.compact!
  end
end
