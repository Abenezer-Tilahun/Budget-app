Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'splash/index'
  # Defines the root path route ("/")
  root "splash#index"
  resources :splash, only:[:index]
  resources :users, only: [:show]
end
