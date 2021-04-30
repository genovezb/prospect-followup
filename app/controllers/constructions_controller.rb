class ConstructionsController < ApplicationController

  def index
    @constructions = Construction.all
  end

  def show
    @construction = Construction.find(params[:id])
  end

  def new
    @construction = Construction.new
  end

  def create
    @construction = Construction.new(construction_params)
    if @construction.save
      redirect_to constructions_path(@construction), notice: 'Construction created!'
    else
      render :new
    end
  end



  private

  def construction_params
    params.require(:construction).permit(:street, :number, :complement, :city, :state, :detail, :responsable_id )
  end

end
