Rails.application.routes.draw do
  get 'homes/show'

  root to: "homes#show", via: :get
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
end
