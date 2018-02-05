Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  get    '/signup',  to: 'users#new'

  root'users#home'
  get '/users', to:'users#home'
  get '/secret_page', to: 'users#secret_page'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end
