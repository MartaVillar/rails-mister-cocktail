class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.cocktail_id = params["cocktail_id"].to_i
    @dose.save
    redirect_to cocktail_path(@dose.cocktail)
  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient, :ingredient_id)
  end
end
