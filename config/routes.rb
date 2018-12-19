Rails.application.routes.draw do
  
  root 'home#index'

  get 'coffee_profiles/new'
  get 'recipes/new'
  #get 'new' => 'recipes#new'
  
  resources :recipes
  resources :coffee_profiles
end
