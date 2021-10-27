class UsersController < ApplicationController
  def show
  end

  def index
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
