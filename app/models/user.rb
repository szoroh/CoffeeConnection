class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :coffee_profiles, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  
  validates :name, presence: true, length: {maximum: 50}
end
