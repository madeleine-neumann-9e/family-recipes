class Ingredient < ApplicationRecord
  validates_presence_of :name_singular_de,
                        :name_singular_en,
                        :name_plural_de,
                        :name_plural_en
end
