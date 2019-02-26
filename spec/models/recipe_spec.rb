require 'rails_helper'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
RSpec.describe Recipe, :type => :model do   

  after(:all) do 
    DatabaseCleaner.clean
  end 

  before(:all) do
    create(:coffee_profile)
    @recipe1 = build(:recipe)
  end 

  it "is valid with a valid attributes" do
    expect(@recipe1).to be_valid
  end 
end 
