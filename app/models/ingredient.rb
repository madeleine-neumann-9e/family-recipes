class Ingredient < ApplicationRecord
  has_many :recipes
  has_many :recipes, through: :recipe_ingredients

  validates_presence_of :name_singular_de,
                        :name_singular_en,
                        :name_plural_de,
                        :name_plural_en
end
