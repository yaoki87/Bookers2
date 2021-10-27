class BooksController < ApplicationController

  def new
   @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(current_user)
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def show
   @book = current_user
  end

  def destroy

  end

  def edit
  end

  def update
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
