Rails.application.routes.draw do
  resources :blogs
  resources :messages, only: [:index, :create]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'
end
