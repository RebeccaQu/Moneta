class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
    @reminder = Reminder.new
  end

  def show
    @reminder = Reminder.find(params[:id])
  end

  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new(reminder_params)

    if @reminder.save
      redirect_to reminders_url
    else
      render :new
    end
  end

  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy
    redirect_to reminders_url
  end

  private

  def reminder_params
    params.require(:reminder).permit(:reminder_name, :date, :start_time, :duration, :repetition, :notification, :completion)
  end

end