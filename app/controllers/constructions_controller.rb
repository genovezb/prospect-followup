class ConstructionsController < ApplicationController
  before_action :set_constructions, only: [:show, :edit, :update, :destroy, :responsable]

  def index
    @constructions = Construction.all
  end

  def detail
    @constructions = Construction.where(detail: "Acabamento")
  end

  def responsable
    @responsable_name = @construction.name
  end

  def show
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
  end

  def update
    @construction.update(construction_params)
    redirect_to construction_path(@construction), notice: 'Construction Updated!'
  end

  def destroy
    @construction.destroy
    redirect_to constructions_path
  end

  # def responsable
  #   @constructions = Construction.where(responsable_id: 2)
  # end

  private

  def set_constructions
    @construction = Construction.find(params[:id])
  end

  def construction_params
    params.require(:construction).permit(:street, :number, :complement, :city, :state, :detail, :responsable_id )
  end

end
