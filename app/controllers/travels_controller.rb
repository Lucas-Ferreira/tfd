class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def show
    @patients = @travel.patients
    @patient = Patient.new
  end

  def create
    @travel = Travel.new(travel_params)
    @rotum = Rotum.find(params[:rotum_id])
    @travel.rotum = @rotum
    @travel.status = params[:travel][:status]
    @vehicle = Vehicle.find(params[:travel][:vehicle])
    if @travel.save!
      #redirect_to travel_path(@travel)
      TravelVehicle.create(travel:@travel, vehicle:@vehicle)
      flash[:alert] = "Viagem Criada com sucesso"
      redirect_to rotum_path(@rotum)
    else
      flash[:alert] = "Erro"
    end
  end

  private

  def travel_params
    params.permit(:status, :rotum_id, :vehicle)
  end

  def set_travel
    @travel = Travel.find(params[:id])
  end
end
