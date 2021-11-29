def build_recipe_ingredients
  # recipes = Recipe.all
  # ingredients = Ingredient.all
  # 5.times do
  #   recipes.each do |recipe|
  #     ingredient = ingredients.sample
  #     RecipeIngredient.create!(
  #       recipe_id: recipe.id,
  #       ingredient_id: ingredient.id,
  #       ingredient_amount: (1..100).to_a.sample
  #     )
  #   end
  # end
  # recipe 1 - Gnocchi with Cherry Tomato Garlic and Parmesan
  RecipeIngredient.create!(
    recipe_id: 1,
    ingredient_id: 3,
    ingredient_amount: 120
  )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 4,
      ingredient_amount: 150
    )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 5,
      ingredient_amount: 2
    )

    RecipeIngredient.create!(
      recipe_id: 1,
      ingredient_id: 6,
      ingredient_amount: 25
    )

    # recipe 2 - Homemade Pappardelle, Veal Ragú
    RecipeIngredient.create!(
      recipe_id: 2,
      ingredient_id: 7,
      ingredient_amount: 120
    )

    RecipeIngredient.create!(
      recipe_id: 2,
      ingredient_id: 8,
      ingredient_amount: 200
    )

    # recipe 3 - Pasta with Squid, Prawns and Chorizo
    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 9,
      ingredient_amount: 120
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 10,
      ingredient_amount: 50
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 11,
      ingredient_amount: 60
    )

    RecipeIngredient.create!(
      recipe_id: 3,
      ingredient_id: 12,
      ingredient_amount: 45
    )

    # recipe 4 - Turbot with Artichokes, Chorizo, White Wine and Olive Oil
    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 13,
      ingredient_amount: 200
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 14,
      ingredient_amount: 75
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 15,
      ingredient_amount: 125
    )

    RecipeIngredient.create!(
      recipe_id: 4,
      ingredient_id: 16,
      ingredient_amount: 30
    )

    # recipe 5 - Grilled Tiger Prawns
    RecipeIngredient.create!(
      recipe_id: 5,
      ingredient_id: 11,
      ingredient_amount: 150
    )

    # recipe 6 - Salt Baked Fillet of Line Caught Sea Bass with Artichokes and Tomatoes
    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 17,
      ingredient_amount: 500
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 18,
      ingredient_amount: 200
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 19,
      ingredient_amount: 125
    )

    RecipeIngredient.create!(
      recipe_id: 6,
      ingredient_id: 20,
      ingredient_amount: 200
    )

    # recipe 7 - Sea Bream Baked en Papillote with Lemon, Herbs and Olive Oil
    RecipeIngredient.create!(
      recipe_id: 7,
      ingredient_id: 21,
      ingredient_amount: 220
    )

    RecipeIngredient.create!(
      recipe_id: 7,
      ingredient_id: 22,
      ingredient_amount: 5
    )

    RecipeIngredient.create!(
      recipe_id: 7,
      ingredient_id: 30,
      ingredient_amount: 100
    )

    RecipeIngredient.create!(
      recipe_id: 7,
      ingredient_id: 16,
      ingredient_amount: 40
    )

    # recipe 8 - Pan Fried Dover Sole with a Grainy Mustard Dressing
    RecipeIngredient.create!(
      recipe_id: 8,
      ingredient_id: 23,
      ingredient_amount: 225
    )

    RecipeIngredient.create!(
      recipe_id: 8,
      ingredient_id: 24,
      ingredient_amount: 50
    )

    # recipe 9 - Grilled Rib Eye Steak 400gr
    RecipeIngredient.create!(
      recipe_id: 9,
      ingredient_id: 25,
      ingredient_amount: 400
    )

    # recipe 10 - Grilled Veal Chop
    RecipeIngredient.create!(
      recipe_id: 10,
      ingredient_id: 26,
      ingredient_amount: 200
    )

    # recipe 11 - Grilled Lamb Cutlets with Smoked Aubergine
    RecipeIngredient.create!(
      recipe_id: 11,
      ingredient_id: 27,
      ingredient_amount: 225
    )

    RecipeIngredient.create!(
      recipe_id: 11,
      ingredient_id: 28,
      ingredient_amount: 180
    )

    # recipe 12 - Roast Baby Chicken Marinated in Lemon
    RecipeIngredient.create!(
      recipe_id: 12,
      ingredient_id: 29,
      ingredient_amount: 150
    )

    RecipeIngredient.create!(
      recipe_id: 12,
      ingredient_id: 30,
      ingredient_amount: 100
    )

    # recipe 13 - Slow Cooked Duck Legs with Orange Glaze
    RecipeIngredient.create!(
      recipe_id: 13,
      ingredient_id: 31,
      ingredient_amount: 150
    )

    RecipeIngredient.create!(
      recipe_id: 13,
      ingredient_id: 32,
      ingredient_amount: 200
    )

  puts "created #{RecipeIngredient.count} RecipeIngredients."
end
