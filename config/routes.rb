Rails.application.routes.draw do
  get 'mainmenus/index'
  root to: "mainmenus#index" 
end
