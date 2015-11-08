class Reminder < ActiveRecord::Base

  belongs_to :user

  scope :todays_reminders, -> {

     where('start_time=?', Time.now.beginning_of_day)
  }



end
