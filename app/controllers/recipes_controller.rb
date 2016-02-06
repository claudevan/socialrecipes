class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def show
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cookery, :kind_meal, :preference,
                                    :serve, :time, :difficulty, :ingredients,
                                    :step_by_step)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
