class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(params.require(:dose).permit(:description, :ingredient_id))
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :file => "/doses/new.html.erb" # also woks with: "new" OR :new
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id]) #find dose
    @dose.description = params[:dose][:description] # update description
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id]) # update ingredient
    if @dose.save ? # save dose
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :edit
    end
  end

  def destroy
    @dose = Dose.find(params[:id].to_i)
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
end
