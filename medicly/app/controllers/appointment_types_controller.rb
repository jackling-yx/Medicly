class AppointmentTypesController < ApplicationController
  before_action :find_appointment_type, only: [:show, :edit, :update, :destroy]

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

    def find_appointment_type
      @appointment_type = AppointmentType.find(params[:id])
    end

    def appointment_type_params
      params.require(:appointment_type).permit(:name, :appointment_id)
    end
end
