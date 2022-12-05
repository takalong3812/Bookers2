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
  
  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
     flash[:notice]= 'You have updated user successfully'
     redirect_to user_path(@user.id)
    else
      render:edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
