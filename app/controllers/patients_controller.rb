class PatientsController < ApplicationController
  #before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def create
    @travel = Travel.find(params[:travel_id])
    @patient = Patient.new(patient_params)
    @patient.travel = @travel
    if @patient.save!
      redirect_to travel_path(@travel) ,notice: "Criado com sucesso"
    else
      render :show
    end
  end

  def destroy
    @travel = Travel.find(params[:travel_id])
    @patient = Patient.find(params[:id])
    if @patient.destroy
      redirect_to travel_path(@travel)
    else
      render :show
    end

  end

  private

  def patient_params
    params.require(:patient).permit(:name, :cel, :cpf, :city, :acompanhantes, :destino, :travel_id)
  end

#  def set_patient
#    @patient = Patient.find(params[:id])
#    raise
#  end
end
