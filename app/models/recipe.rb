class Recipe < ApplicationRecord 

  validates :coffee, presence: true,
                     length: { in: 3..70 }
  validates :quantity, presence: true, 
                       numericality: { greater_than_or_equal_to: 0 }
  validates :method, presence: true 
  validates :water_temperature, presence: true,
                                numericality: { in: 0..100 }
  validates :water_amount, presence: true,
                            numericality: { in: 0..500 }
  validates :grind, presence: true 
  validates :aroma, presence: true 
  validates :aroma_points, presence: true,
                            numericality: { in: 0..25 }
  validates :taste, presence: true
  validates :taste_points, presence: true,
                            numericality: { in: 0..25 }
  validates :body, presence: true 
  validates :body_points, presence: true, 
                          numericality: { in: 0..25 }
  validates :astringency, presence: true
  validates :astringency_points, presence: true,
                                  numericality: { in: 0..25 }   
  validates :brew_time, presence: true            
end
