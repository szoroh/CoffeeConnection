class CreateCoffeeProfile < ActiveRecord::Migration[5.1]
  def change
    create_table :coffee_profiles do |t|
    t.string  :name
    t.string  :roasters
    t.integer :mark
    t.string  :description
    t.string  :beans_origin_country
    t.string  :region
    t.string  :farm
    t.string  :treatment_method
    t.string  :variety
    t.string  :cultivation_altitude
    t.string  :arabica
    t.string  :robusta
    t.string  :roast
    t.string  :grain_size
    t.string  :package_quantity 

    t.timestamps
    end
  end
end
