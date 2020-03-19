Rails.application.routes.draw do
  resources :groups
  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'groups#index'
end