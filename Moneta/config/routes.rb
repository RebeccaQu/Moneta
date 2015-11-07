Rails.application.routes.draw do

  root 'welcome#index'

  resources :users, only: [:new, :create, :edit, :update]
  resources :caregivers, only: [:new, :create, :edit, :update]

  resources :sessions, only: [:new, :create, :destroy]

end
