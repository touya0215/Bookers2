class UsersController < ApplicationController
  def index
  end

  def show

  end

  def edit

  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end

end
