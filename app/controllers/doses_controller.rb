class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end
end

private

def doses_params
  params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
end
