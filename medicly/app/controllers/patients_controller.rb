class PatientsController < ApplicationController
before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :birth_date, :gender, :allergies, :doctor_id, :appointment_type_id)
  end


end
