class TodayController < ApplicationController
  def index
    @reminders = Reminder.all
    @reminder = Reminder.new
  end
end
