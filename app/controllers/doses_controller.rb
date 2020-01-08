class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    raise
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
