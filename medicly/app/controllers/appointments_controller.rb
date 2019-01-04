class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  # before_action -> {authorized_for(@appointment)}
  before_action :require_login

    def index
      @type = params[:value]
      if params[:appointment_type_id]
        @appointments = Appointment.where(user_id: current_user.id, appointment_type_id: @type)
      else
        @appointments = Appointment.where(user_id: current_user.id)
      end
    end

    def general_appointment
      @appointments = Appointment.where(user_id: current_user.id, appointment_type_id: 1)
    end

    def vaccination
      # @appointment = Appointment.find(params[:id])
      # authorized_for(@appointment)
      @appointments = Appointment.where(user_id: current_user.id, appointment_type_id: 2)
    end

    def emergency
      @appointments = Appointment.where(user_id: current_user.id, appointment_type_id: 3)
    end

    def show
      authorized_for(@appointment)
      @doctor = @appointment.doctor
      @user = @appointment.user
    end

    def new
      @appointment = Appointment.new
      @appointment.user = current_user
      authorized_for(@appointment)
      @user = current_user
    end

    def create
        @appointment = Appointment.new(appointment_params)
        authorized_for(@appointment)
        @user = current_user
          if @appointment.valid?
            @appointment.save(appointment_params)
            redirect_to appointments_path
          else
            flash[:errors] = @appointment.errors.full_messages
            render :new
          end
    end

    def edit
      authorized_for(@appointment)
      @user = current_user
    end

    def update
      authorized_for(@appointment)
      @user = current_user
      if @appointment.valid?
        @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)
      else
        flash[:errors] = @appointment.errors.full_messages
        render :new
      end
    end

    def destroy
      authorized_for(@appointment)
      @appointment.destroy
      redirect_to appointments_path
    end

  private

    def find_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :user_id, :appointment_type_id, :note, :appointment_date)
    end

    def require_login
      redirect_to sessions_new_path unless session.include?(:user_id)
    end
end
