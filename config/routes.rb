Rails.application.routes.draw do
  authenticated do
    root to: 'users#index'
  end 

  root to: 'home#index'
  
  resources :recipes
  resources :coffee_profiles

  devise_for :users
end
