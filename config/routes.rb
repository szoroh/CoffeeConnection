Rails.application.routes.draw do
  
  root 'home#index'

  resources :recipes
  resources :coffee_profiles
end
