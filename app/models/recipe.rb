class Recipe < ApplicationRecord
  has_many_attached :photos
  has_rich
end
