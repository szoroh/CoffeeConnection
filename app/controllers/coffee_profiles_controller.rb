class CoffeeProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @coffee_profiles = CoffeeProfile.all
  end 

  def show 
    @coffee_profiles = CoffeeProfile.find(params[:id])
  end 

  def new  
    @coffee_profile = CoffeeProfile.new
  end 

  def create
    @coffee_profiles = CoffeeProfile.create(coffee_profile_params)
    if @coffee_profiles.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @coffee_profile = CoffeeProfile.new(params[:id])
    render :new 
  end 

  def update
    @coffee_profile = CoffeeProfile.find(params[:id])
    if @coffee_profile.update(coffee_profile_params)
      redirect_to coffee_profile_path
    else
      render :new
    end 
  end 

  def destroy
    CoffeeProfile.destroy(params[:id])
    redirect_to coffee_profile_path
  end 

  private

  def coffee_profile_params
    params.require(:coffee_profile).permit(COFFEE_PROFILE_PARAMS)
  end

  COFFEE_PROFILE_PARAMS = [:id, :name, :roasters, :mark, :description, :beans_origin_country,:region, :farm,
                           :treatment_method, :variety, :cultivation_altitude, :arabica, :robusta, :roast, 
                           :grain_size, :package_quantity]
end 
