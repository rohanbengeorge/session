Rails.application.routes.draw do
  resources :sessions, only: [ :new, :create, :destroy]
  resources :users
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy',as: 'logout'
  get 'page/index'
  root 'page#index'
end
