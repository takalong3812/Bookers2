class UsersController < ApplicationController
  

  
  def show
  end

  def edit
    @user= User.find(params[:id])
    if @user == current_user
    else
     redirect_to user_path(current_user)
    end
  end  
  
  def index
  end
end
