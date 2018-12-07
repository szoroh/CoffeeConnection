class CreateRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
    t.string  :coffee
    t.decimal :quantity,          :precision => 4, scale: 1
    t.string  :method
    t.integer :water_temperature
    t.decimal :water_amount,      :precision => 4, scale: 1
    t.string  :grind
    t.string  :aroma
    t.integer :aroma_points
    t.string  :taste
    t.integer :taste_points
    t.string  :body
    t.integer :body_points
    t.string  :astringency
    t.integer :astringency_points 
  
    t.timestamps
    end
  end
end
