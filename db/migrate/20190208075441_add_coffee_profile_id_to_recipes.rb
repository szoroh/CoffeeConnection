class AddCoffeeProfileIdToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :coffee_profile, foreign_key: true
  end
end
