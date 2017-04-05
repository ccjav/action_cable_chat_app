Rails.application.routes.draw do

  root 'messages#index'
  resources :users
  resources :messages
  resources :visits
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  mount ActionCable.server, at: '/cable'
end
