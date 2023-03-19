class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:top, :about]     #ログインが住んでいない場合トップページかアバウトページしか移動できなくする。
  before_action :configure_permitted_parameters, if: :devise_controller?      #deviceの利用機能を使用する前に２２行目にに書いてあるconfigure_permitted_parametersが実行される。

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "Welcome! You have signed up successfully."
      user_path(current_user.id)
    end
  end


  def after_sign_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
    root_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name])
  end


end
