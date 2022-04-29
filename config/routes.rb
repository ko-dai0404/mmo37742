Rails.application.routes.draw do
  devise_for :users
  get 'mainmenus/index'
  root to: "mainmenus#index" 
  resources :mainmenus
end
