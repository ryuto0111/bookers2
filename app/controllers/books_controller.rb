class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @book = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @user.save
    redirect_to book_path
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:book_title, :book_body,)
  end
end
