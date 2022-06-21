class AddMeasurementToIngredient < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :measurement_de, :string
    add_column :ingredients, :measurement_en, :string
  end
end
