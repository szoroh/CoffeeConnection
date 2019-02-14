class RecipesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @recipes = Recipe.all
  end 

  def show
    @recipe = Recipe.find(params[:id])
  end 

  def new
    @coffee_profile = CoffeeProfile.find(params[:coffee_profile_id])
    @recipe = @coffee_profile.recipes.new
  end 

  def create
    @coffee_profile = CoffeeProfile.find(params[:coffee_profile_id])
    @recipe = @coffee_profile.recipes.create(recipes_params)
    
    if @recipe.save
      redirect_to root_path
    end

  end 
    
  def edit
  end 

  def update
  end 

  def destroy
  end 

  private 

  def recipes_params
    params.require(:recipe).permit(RECIPE_PARAMS)
  end 

  RECIPE_PARAMS =[:id, :coffee, :quantity, :method, :water_temperature, :water_amount,
                  :grind, :aroma, :aroma_points, :taste, :taste_points, :body, :body_points,
                  :astringency, :astringency_points, :brew_time, :coffee_profile_id]
end 
