class CoffeeProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_coffee_profile, only: [:show, :edit, :update, :destroy]

  def index
    @coffee_profiles = CoffeeProfile.all
  end 

  def show
    @coffee_profile = CoffeeProfile.find(params[:id])
  end

  def new
    @cofee_profile = CoffeeProfile.new
  end

  def edit
  end

  def create
    @coffee_profile = CoffeeProfile.new(coffee_profile_params)
    
    if @coffee_profile.save
      redirect_to root_url
    else
      render :new
    end
  end 

  def update

    if @coffee_profile.update(coffee_profile_params)
      redirect_to root_url
    else
      render :new
    end
  end 

  def destroy
    @coffee_profile.destroy
  end

  private

  def set_coffee_profile
    @coffee_profile = CoffeeProfile.find(params[:id])
  end 

  def coffee_profile_params
    params.require(:coffee_profile).permit(COFFEE_PROFILE_PARAMS)
  end

  COFFEE_PROFILE_PARAMS = [:id, :name, :roasters, :mark, :description, :beans_origin_country,:region, :farm,
                           :treatment_method, :variety, :cultivation_altitude, :arabica, :robusta, :roast, 
                           :grain_size, :package_quantity]
end 
