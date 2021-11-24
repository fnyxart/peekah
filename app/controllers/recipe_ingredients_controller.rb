class RecipeIngredientsController < ApplicationController
  def index
    @recipe_ingredients = RecipeIngredient.all
  end

  def new
    @recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)
  end

  private

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:Ingredient_amount)
  end
end