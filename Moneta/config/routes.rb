 Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :reminders
  get '/reminders/today'

  resources :caregivers, only: [:new, :create, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]


end
