class Recipe < ApplicationRecord
  has_many :recipe_ingredients, inverse_of: :recipe
  has_many :ingredients, through: :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank, allow_destroy: true

  has_many_attached :photos
  has_rich_text :content_de
  has_rich_text :content_en
end
