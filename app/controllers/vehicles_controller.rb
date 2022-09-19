class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  def index
    @vehicles = Vehicle.all
  end

  def show
    raise
  end

  def new
    @vehicle = Vehicle.new
    @vehicles = Vehicle.all
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to new_vehicle_path, notice: "Criado com sucesso"
    else
      render :new
    end
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    if @vehicle.update(vehicle_params)
      redirect_to root_path, notice: "Vehicle was sucessfully updated."
    else
      render :edit
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to new_vehicle_path, notice: "Veículo deletado com sucesso"
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:montadora, :modelo, :ano, :placa, :capacidade, :status)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
