Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :favorites, only: [:create]
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :listings, only: [:index, :create, :show]

  #customs for fetch
  get '/profile', to: 'users#profile'
  get '/mylistings', to: 'favorites#get_favorites'

  #jwt auth 
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
