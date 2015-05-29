Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
  get '/signup' => 'users#new', as: :signup
  post '/signup' => 'users#create'

  get '/tweets.json' => 'tweets#index', as: :tweets
  post '/tweets' => 'tweets#index' # This'd make the tweet, but obv. isn't hooked up yet

  resources :users

end
