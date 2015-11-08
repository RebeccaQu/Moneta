 Rails.application.routes.draw do


  root 'welcome#index'

  resources :users

  resources :reminders

  resources :caregivers, only: [:new, :create, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]

  resources :medications

  resources :families
  get "/reminders/today" =>"reminders#today"
  post "/reminders/today" =>"reminders#today"

end
