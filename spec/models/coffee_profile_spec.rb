require 'rails_helper'

RSpec.describe CoffeeProfile, :type => :model do
  before(:all) do 
    @coffee_profile1 = build(:coffee_profile)
  end 

  it "is valid with a valid attributes" do
    expect(@coffee_profile1).to be_valid 
  end 
end 

