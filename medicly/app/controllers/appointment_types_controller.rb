class AppointmentTypesController < ApplicationController
  before_action :find_appointment_type, only: [:show, :edit, :update, :destroy]

  def index
    @appointment_types = AppointmentType.all
  end

  def show
  end

  def new
    @appointment_type = AppointmentType.new
  end

  def create
    @appointment_type = AppointmentType.new(appointment_type_params)
    if @appointment_type.valid?
      @appointment_type.save
      redirect_to appointment_type_path(@appointment_type)
    else
      flash[:errors] = @appointment_type.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment_type.valid?
      @appointment_type.update(appointment_type_params)
      redirect_to appointment_type_path(@appointment_type)
    else
      flash[:errors] = @appointment_type.errors.full_messages
      render :edit
    end
  end

  def destroy
    @appointment_type.destroy
    redirect_to appointment_types_path
  end

  private

    def find_appointment_type
      @appointment_type = AppointmentType.find(params[:id])
    end

    def appointment_type_params
      params.require(:appointment_type).permit(:name, :appointment_id)
    end
end
