class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = User
    @books = Book.all
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
