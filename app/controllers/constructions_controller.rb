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
      redirect_to construction_path(@construction), notice: 'Construction created!'
    else
      render :new
    end
  end

  def edit
    @construction = Construction.find(params[:id])
  end

  def update
    @construction = Construction.find(params[:id])
    @construction.update(construction_params)
    redirect_to construction_path(@construction), notice: 'Construction Updated!'
  end

  def destroy
    @construction = Construction.find(params[:id])
    @construction.destroy
    redirect_to constructions_path
  end

  def detail
    @constructions = Construction.where(detail: "Acabamento")
  end


  def responsable
    @constructions = Construction.where(responsable_id: 2)
  end

  private

  def construction_params
    params.require(:construction).permit(:street, :number, :complement, :city, :state, :detail, :responsable_id )
  end

end
