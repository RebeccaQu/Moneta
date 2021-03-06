class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dob, :email, :password, :password_confirmation)
  end

end
