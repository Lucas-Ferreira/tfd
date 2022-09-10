class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    @travel = Travel.new(travel_params)
    @rotum = Rotum.find(params[:rotum_id])
    @travel.rotum = @rotum
    if @travel.save!
      #redirect_to travel_path(@travel)
      flash[:alert] = "Viagem Criada com sucesso"
    else
      flash[:alert] = "Erro"
    end
  end

  private

  def travel_params
    params.require(:travel).permit(:status, :rotum_id)
  end

  def set_travel
    @travel = Travel.find(params[:id])
  end
end
