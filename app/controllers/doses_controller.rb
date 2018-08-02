class DosesController < ApplicationController

  def new
    @dose = Doses.new
  end

  def create
    @dose = Doses.new(doses_params)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def doses_params
    params.require(:restaurant).permit(:description)
  end
end
