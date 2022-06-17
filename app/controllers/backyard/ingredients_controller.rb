module Backyard
  class IngredientsController < ApplicationController
    def index
      @ingredients = Ingredient.all
    end

    def new
      @ingredient = Ingredient.new
      @url = backyard_ingredients_path
    end

    def create
      @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        redirect_to backyard_ingredients_path
      else
        render :new, flash.alert("something went wrong")
      end
    end

    def edit
      @ingredient = Ingredient.find(params[:id])
    end

    def update
      @ingredient = Ingredient.find(params[:id])
      @url = backyard_ingredient_path
      if @ingredient.update(ingredient_params)
        redirect_to backyard_ingredients_path
      else
        render :new, flash.alert("something went wrong")
      end
    end

    private
    def ingredient_params
      params.require(:ingredient).permit(
        :name_singular_de,
        :name_singular_en,
        :name_plural_de,
        :name_plural_en
      )
    end
  end
end
