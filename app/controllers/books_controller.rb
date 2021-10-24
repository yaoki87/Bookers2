class BooksController < ApplicationController
  
  def new
  end

  def create

  end

  def index
    
  end

  def show
    
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
