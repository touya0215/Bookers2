class UsersController < ApplicationController

  def index
    @book = Book.new
    @user = User.all
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books

  end

  def edit
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
    @user_list = @book.user
    redirect_to(books_path) unless @user_list == current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
