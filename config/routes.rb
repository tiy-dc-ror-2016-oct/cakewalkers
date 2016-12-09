Rails.application.routes.draw do

  resource :cart, only: [:destroy]
  resources :client_orders, only: [:show]
  resources :products
  resources :line_items, except: [:show, :new]
  resource :session, only: [:new, :create, :destroy]
  resources :users, except: [:index]
  resources :orders, only: [:new, :create, :edit, :update, :destroy] do
    member do
      get '/status', action: :status, as: :status
    end
  end
  root "welcome#index"
end
