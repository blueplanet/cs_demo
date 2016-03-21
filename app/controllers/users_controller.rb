class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    User.create! params.require(:user).permit(:name, :email)
    redirect_to root_path
  end

  def topics
    @user = User.find params[:user_id]
  end
end
