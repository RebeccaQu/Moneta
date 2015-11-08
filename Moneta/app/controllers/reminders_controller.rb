class RemindersController < ApplicationController
  def index
    @reminders = Reminder.all
    # binding.pry
    @reminder = Reminder.new
  end

  def show
    @reminder = Reminder.find(params[:id])
    # @reminder = Reminder.where(start_time: (Date.today))
    # @reminder = Reminder.new
    # @reminder.start_time = Date.today
    # @reminder.date = Date.today
  end

  def new
    @reminder = Reminder.new
    @reminder.start_time
    @reminder.date = Date.today
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