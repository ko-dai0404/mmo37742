Rails.application.routes.draw do
  devise_for :users
  get 'mainmenus/index'
  get 'credit_cards/index'
  root to: "mainmenus#index" 
  resources :mainmenus, only:[:index]
  resources :credit_cards, only:[:index, :new, :create]
end
