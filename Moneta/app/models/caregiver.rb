class Caregiver < ActiveRecord::Base
  has_secure_password

  belongs_to :user

  has_many :reminders

  validates :password, length: { minimum: 3 }, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end

