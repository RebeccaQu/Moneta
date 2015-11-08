class User < ActiveRecord::Base
  has_secure_password

  has_many :reminders
  has_many :medications
  has_many :families

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
