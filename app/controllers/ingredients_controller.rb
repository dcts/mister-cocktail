class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.where(category: "alcohol")
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
