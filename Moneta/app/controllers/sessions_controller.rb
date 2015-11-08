class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_reminder_path, notice: "Logged In!"
    else
      render :new, notice: "Wrong email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out"
  end
end
