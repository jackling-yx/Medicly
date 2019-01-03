class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    authorized_for(@user)
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def edit
    authorized_for(@user)
  end

  def update
    authorized_for(@user)
    if @user.valid?
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
    authorized_for(@user)
    @user.destroy
    redirect_to user_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :name, :birth_date, :gender, :allergies, :doctor_id, :appointment_type_id)
  end
end
