class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :stirng, unique: true 
  end
end
