Rails.application.routes.draw do
  # devise_for :users
  resources :users
  resources :sessions
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create', as: 'register'
  get 'signin',  to: 'sessions#new', as: 'signin'
  post 'signin', to: 'sessions#create', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
