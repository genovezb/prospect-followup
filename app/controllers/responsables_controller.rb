class ResponsablesController < ApplicationController

  def index
    @responsables = Responsable.all
  end

  def show
    @responsable = Responsable.find(params[:id])
  end

  def constructions
    @constructions = Construction.where(responsable_id: 2)
  end

  def new
    @responsable = Responsable.new
  end

  def create
    @responsable = Responsable.new(responsable_params)
    @responsable.save
    redirect_to responsable_path(@responsable)
  end

  private

  def responsable_params
    params.require(:responsable).permit(:name, :company, :phone)
  end

end
