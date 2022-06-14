class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

 def create
  @recipe = Recipe.new(recipe_params)
  if @recipe.save
    redirect_to root_path
  else
    render :new
  end
 end

 private

 
 def recipe_params
  params.require(:recipe).permit(:title, :text, :material, :genre_id, :image).merge(user_id: current_user.id)
 end
end