Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get 'coffee_profiles/new'
  get 'recipes/new'
  get 'new' => 'recipes#new'
  
  resources :recipes
  resources :coffee_profiles
end
