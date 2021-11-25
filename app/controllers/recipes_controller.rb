class RecipesController < ApplicationController
  before_action :recipe_id, only: %i[show destroy edit update]
  # before_action

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @dish = Dish.new
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_recipe_ingredients_path(@recipe), notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  def index
    @recipes = Recipe.all
  end

  def show; end

  def edit; end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :method)
  end

  def recipe_id
    @recipe = Recipe.find(params[:id])
  end
end
