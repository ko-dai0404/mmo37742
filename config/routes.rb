Rails.application.routes.draw do
  get 'credit_cards/index'
  resources :mainmenus, only:[:index]
  devise_for :users
  get 'mainmenus/index'
  root to: "mainmenus#index" 
  resources :mainmenus
end
