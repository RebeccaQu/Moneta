class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
  end

  def update
    @medication = Medication.find(params[:id])

    if @medication.update_attributes(medication_params)
      redirect_to medication_path(@medication)
    else
      render :edit
    end
  end

  def edit
    @medication = Medication.find(params[:id])
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.new(medication_params)

    if @medication.save
      redirect_to medications_url
    else
      render :new
    end
  end


  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
    redirect_to reminders_url
  end

  private
  def medication_params
    params.require(:medication).permit(:medication_name, :brand, :dose, :route, :frequency, :refill_date, :refill_days, :prescriber, :dispenser, :diagnosis)
  end



end
