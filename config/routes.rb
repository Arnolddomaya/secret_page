Rails.application.routes.draw do

  root'users#home'
  get '/users', to:'users#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root ''
  resources :users
end
