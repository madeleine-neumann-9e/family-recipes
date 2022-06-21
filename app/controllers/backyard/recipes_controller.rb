module Backyard
  class RecipesController < BackyardController
    def index
      @recipes = Recipe.all
    end

    def new
      @recipe = Recipe.new
      @url = backyard_recipes_path
      @recipe_ingredients = @recipe.recipe_ingredients.new
      @ingredients = Ingredient.all

      @ingredients_dropdown = @ingredients.map do |ingredient|
        [ingredient.name_plural_de, ingredient.id]
      end
    end

    def create
      @recipe = Recipe.new(recipe_params)

      @ingredients = Ingredient.all
      if @recipe.save
        redirect_to backyard_recipes_path
      else
        render :new, flash.alert("something went wrong")
      end
    end

    def edit
      @recipe = Recipe.find(params[:id])
    end

    def update
      @recipe = Recipe.find(params[:id])
      @url = backyard_Recipe_path
      if @recipe.update(recipe_params)
        redirect_to backyard_recipes_path
      else
        render :new, flash.alert("something went wrong")
      end
    end
    private
    def recipe_params
      params.require(:recipe).permit(:title, :photos, :content_de, :content_en, recipe_ingredients_attributes: [:ingredient_id, :recipe_id, :ingredient_amount, :_destroy])
    end

  end
end
