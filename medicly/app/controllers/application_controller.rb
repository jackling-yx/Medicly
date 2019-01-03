class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new
    end
  end

  def logged_in?
    !!current_user.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You aren't logged in!"
      redirect_to login_path
      false
    else
      true
    end
  end

  def authorized_for(target_user_id)
    if authorized? && current_user.id != target_user_id.to_i
      flash[:authorized] = "You are not authorised to view that page! 🙈"
      redirect_to current_user
    end
  end
end
