class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update, :destroy]

  def index
    @users = User.all
  end

  def create 
    #user = User.new(user_params)
    #user.save

    User.create(user_params)

    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @tweets = @user.tweets
  end

  def update
    User.update(@user.id, user_params)

    redirect_to users_path
  end

  def destroy
    User.destroy(@user.id)


    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:id, :username, :mail)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
