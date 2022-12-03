class BooksController < ApplicationController
  
  def create
    @book= Book.new(book_params)
    @book.user_id= current_user.id
    @book.save
    redirect_to book_path
  end

  def index
    @books= Book.all
    @book=Book.new
    @user= current_user
  end

  def show
    @books= Book.all
    @book= Book.find(params[:id])
    @user= @book.user
  end

  def edit
  end
end
