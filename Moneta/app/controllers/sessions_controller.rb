class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      redirect_to events_url
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session
  end
end
