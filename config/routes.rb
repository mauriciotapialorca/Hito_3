Rails.application.routes.draw do
  resources :users
  get 'home/index'
  devise_for :pharmacy_users
  resources :laboratory_registers
  resources :laboratories
  resources :providers
  resources :medicines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
  get 'api/news' 
  get 'api/:date1/:date2', to: 'api#between_dates'

  root to: "home#index"
end





