class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new, :unprocessable_entity
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :avatar, :bio, files: [])
    end
end
