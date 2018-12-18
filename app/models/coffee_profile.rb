class CoffeeProfile < ApplicationRecord
  has_many :recipes 

  validates :name, presence: true,
                   uniqueness: true 
  validates :roasters, presence: true
  validates :mark, uniqueness: true, 
                   numericality: { in: 0..5, only_integer: true  }
  validates :description, presence: true,
                          length: { maximum: 700 }
  validates :beans_origin_country, presence: true  
  validates :region, presence: true 
  validates :farm, presence: true 
  validates :treatment_method, presence: true 
  validates :variety, presence: true 
  validates :cultivation_altitude, presence: true,
                                   numericality: { maximum: 8000 }
  validates :arabica, presence: true
  validates :robusta, presence: true 
  validates :roast, presence: true 
  validates :grain_size, presence: true 
  validates :package_quantity, presence: true,
                               numericality: { only_integer: true }
end 
