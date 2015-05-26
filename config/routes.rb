Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'

  get '/tweets' => 'tweets#index', as: :tweets
  post '/tweets' => 'tweets#index'

  resources :users

end
