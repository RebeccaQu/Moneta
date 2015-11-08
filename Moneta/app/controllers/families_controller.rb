class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      redirect_to families_url
    else
      render :new
    end
  end

private

  def family_params
    params.require(:family).permit(:first_name, :last_name, :dob, :email, :phone_number, :relatonship)
  end
end
