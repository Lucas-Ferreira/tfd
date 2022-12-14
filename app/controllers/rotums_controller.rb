class RotumsController < ApplicationController
  before_action :set_rotum, only: [:show, :edit, :update, :destroy]
  def index
    @rotums = Rotum.all
  end

  def show
    @rotum_run = @rotum.travels.where.not(status:"Finalizado")
    @rotum_history = @rotum.travels.where(status:"Finalizado")
    @travel = Travel.new
  end

  def new
    @rotum = Rotum.new
    @rotums = Rotum.last
  end

  def create
    @rotum = Rotum.new(rotum_params)
    if @rotum.save!
      redirect_to rotum_path(@rotum), notice: "Criado com sucesso"
    else
      render :new
    end
  end

  private

  def rotum_params
    params.require(:rotum).permit(:origem, :destino, :capacidade, :especialidade, :hr_partida)
  end

  def set_rotum
    @rotum = Rotum.find(params[:id])
  end

end
