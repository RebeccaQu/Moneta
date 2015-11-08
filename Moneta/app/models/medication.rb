class Medication < ActiveRecord::Base
  # before_action :ensure_logged_in

  belongs_to :user
end
