class BooksController < ApplicationController
  
def create
    @book= Book.new(book_params)
    @book.user_id= current_user.id
    if @book.save
     flash[:notice]= 'You have created book successfully'
     redirect_to book_path(@book.id)
  else
     @books= Book.all
     @user= current_user
     render :index
  end
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
