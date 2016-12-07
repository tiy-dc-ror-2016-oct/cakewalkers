Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]
  resources :clients, except: [:index]
  root "welcome#index"
end
