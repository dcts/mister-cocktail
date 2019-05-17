class ResetTablesController < ApplicationController
  def run
    ActiveRecord::Tasks::DatabaseTasks.load_seed
    redirect_to cocktails_path
  end

  def delete
    Dose.delete_all
    Cocktail.delete_all
    Ingredient.delete_all
    redirect_to cocktails_path
  end
end
