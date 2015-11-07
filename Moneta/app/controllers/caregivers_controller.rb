class CaregiversController < ApplicationController
  def new
    @caregiver = Caregiver.new
  end

  def create
    @caregiver = Caregiver.new(caregiver_params)
    if @caregiver.save
      redirect_to root_url
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  private
  def caregiver_params
    params.require(:caregiver).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
