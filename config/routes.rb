Rails.application.routes.draw do
  root 'recipes#index'
  get 'recipes/new'
  get 'coffee_profiles/new'
  get 'coffee_profiles/index'

  resources :recipes
end
