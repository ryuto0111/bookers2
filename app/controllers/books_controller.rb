class BooksController < ApplicationController

  def index
    @book = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user.id = current_user.id
    @user.save
    redirect_to book_path
  end

  def edit
  end

  def show
  end

  private

  def book_params
    params.require(:book).permit(:title, :body,)
  end
end
