class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many_attached :photos
  has_rich_text :content
end
