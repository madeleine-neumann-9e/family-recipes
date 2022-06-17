class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name_singular_de, null: false
      t.string :name_singular_en, null: false
      t.string :name_plural_de, null: false
      t.string :name_plural_en, null: false

      t.timestamps
    end
  end
end
