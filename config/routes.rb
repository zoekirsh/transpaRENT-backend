Rails.application.routes.draw do
  resources :users, only: [:create, :show, :update, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :favorites, only: [:create]
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :listings, only: [:index, :show]
  resources :addresses, only: [:index, :show]
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
