Rails.application.routes.draw do
  get '/getreviews/:id', to: 'reviews#get_reviews'
  get '/favorites/:id', to: 'favorites#is_favorite'

  resources :users, only: [:index, :show, :update, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :favorites, only: [:index, :create, :destroy]
  resources :reviews, only: [:index, :show, :create, :update, :destroy]

  #customs for fetch
  get '/profile', to: 'users#profile'
  get '/mylistings', to: 'favorites#get_favorites'

  #jwt auth 
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
