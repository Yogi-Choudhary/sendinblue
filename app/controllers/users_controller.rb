class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      UserMailer.send_welcome(user).deliver_now
    end
    redirect_to users_path
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
