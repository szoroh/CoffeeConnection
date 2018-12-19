class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end 

  def show
    @recipes = Recipe.find(params[:id])
  end 

  def new
    @recipe = Recipe.new 
  end 

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end 
    
  def edit
    @recipe = Recipe.new(params[:id])
    render :new
  end 

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path
    else
      render :new
    end
  end 

  def destroy
    Recipe.destroy(params[:id])
    redirect_to recipe_path
  end 

  private

  def recipe_params
    params.require(:recipe).permit(RECIPE_PARAMS)
  end 

  RECIPE_PARAMS =[:coffee, :quantity, :method, :water_temperature, :water_amount,
                  :grind, :aroma, :aroma_points, :taste, :taste_points, :body, :body_points,
                  :astringency, :astringency_points]
end 
