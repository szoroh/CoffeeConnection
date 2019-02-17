Rails.application.routes.draw do
  authenticated do
    root to: 'coffee_profiles#index', as: '/'
  end 

  root to: 'home#index'

  resources :coffee_profiles do 
    resources :recipes, only: [:new, :create, :show]
  end 
  
  resources :recipes, only: [:index, :show, :create]

  devise_for :users

  as :user do
    delete 'profile', to: 'registrations#destroy'
  end 
end
