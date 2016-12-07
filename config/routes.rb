Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :clients, except: [:index]
  resources :orders, only: [:new, :create, :edit, :update, :destroy]
  root "welcome#index"
end
