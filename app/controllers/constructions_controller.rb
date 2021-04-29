class ConstructionsController < ApplicationController

  def index
    @constructions = Constructions.all
  end

  def show
    @constructions = Construction.find(params[:id])
  end

  def new
    @constructions = Construction.new
  end

  def create
    @construction = Construction.new(construction_params)
    @constructions.save
  end



  private

  def construction_params
    params.require(:construction).permit(:sreet, :number, :complement, :city, :state, :detail, :responsable_id )
  end

end
