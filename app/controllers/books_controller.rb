class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
    redirect_to books_path
  end

  def index
    @book = Book.new
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
