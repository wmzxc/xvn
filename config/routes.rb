Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  get 'home/index'
  get 'users/sessions'
  get 'users/passwords'
  get 'users/registrations'
  get 'user/id'
  get 'user/new'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :users, only: :show
  
  resources :users, only: [:show]
  resources :posts, only: [:create]
  resources :users, only: [:new]
  root to: 'home#index'
  resources :users, only: [:show]
  
end



