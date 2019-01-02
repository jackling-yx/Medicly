class PatientsController < ApplicationController
before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.valid?
      @patient.save
      redirect_to patient_path(@patient)
    else
      flash[:errors] = @patient.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.valid?
      @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      flash[:errors] = @patient.errors.full_messages
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patient_path
  end

private

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :birth_date, :gender, :allergies, :doctor_id, :appointment_type_id)
  end


end
