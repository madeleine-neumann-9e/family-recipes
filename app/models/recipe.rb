class Recipe < ApplicationRecord
  has_many_attached :photos
  has_rich_text :content
end
