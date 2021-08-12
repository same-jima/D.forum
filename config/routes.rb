Rails.application.routes.draw do
  devise_for :users
  root to: 'responsive#index'
  resources :items
  resources :users, only: [:show]
end
