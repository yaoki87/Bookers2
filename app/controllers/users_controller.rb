class UsersController < ApplicationController
  def show
  end

  def index
  end

  def edit
    @user = current_user
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
