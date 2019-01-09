class User < ApplicationRecord
  #has_many :recipes
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  
  #validates :name, presence: true, length: { in: 3..30 }
end
