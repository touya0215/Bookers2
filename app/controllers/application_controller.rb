class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "Welcome! You have signed up successfully."
      user_path(@user[:id])
    end
  end

  def after_log_in_path_for(resource)
    if current_user
      flash[:notice] = "Signed in successfully."
      user_path
    end
  end


  def after_log_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
    root_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end


end
