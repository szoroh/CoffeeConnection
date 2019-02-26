class ChangeRecipeMethodToBrewMethod < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :method, :brew_method
  end
end
