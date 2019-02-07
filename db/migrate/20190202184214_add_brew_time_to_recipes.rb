class AddBrewTimeToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :brew_time, :integer
  end
end
