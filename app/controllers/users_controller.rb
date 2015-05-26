class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_parameters)

    if @user.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  private

  def allowed_parameters
    params.require(:user).permit(:name, :password, :email)
  end


end
