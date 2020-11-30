class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.string :meal_name
      t.string :meal_descritpion
      t.float :price
      t.string :photo
      t.boolean :availability, default: true
      t.string :allergy
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
