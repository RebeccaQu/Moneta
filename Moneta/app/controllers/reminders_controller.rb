class RemindersController < ApplicationController
  def index
  end

  def show
    @reminder = Reminder.find(params[:id])
  end

  def new
    @reminder = Reminder.new
  end


  def create
    @reminder = Reminder.new(reminder_params)
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy
    redirect_to products_path
  end

  private
  def reminder_params
    params.require(:reminder).permit(:reminder_name, :date, :start_time, :duration, :repetition, :notification, :completion)
  end


end