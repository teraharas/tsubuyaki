Rails.application.routes.draw do
  resource :registrations, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :show]
  
  root to: 'registrations#new'
end
