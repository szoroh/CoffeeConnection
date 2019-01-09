Rails.application.routes.draw do
  authenticated do
    root to: 'user#index'
  end 

  root to: 'home#index'

  devise_for :users
  
  resources :recipes
  resources :coffee_profiles
end
