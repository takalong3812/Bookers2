class BooksController < ApplicationController
  
  def create
    @book= Book.new(book_params)
    @book.user_id= current_user.id
    @book.save
    redirect_to book_path
  end

  def index
  end

  def show
  end

  def edit
  end
end
