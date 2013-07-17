Twittr::Application.routes.draw do
  root :to => 'tweets#index'
  resources :tweets
  resources :users
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
