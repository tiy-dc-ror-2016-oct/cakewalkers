Rails.application.routes.draw do


  resources :client_orders, only: [:show]
  resources :products
  resources :line_items, except: [:show, :new] do
    member do
      get '/status', action: :status, as: :status
    end
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users, except: [:index]
  resources :orders, only: [:new, :create, :edit, :update, :destroy]
  root "welcome#index"
end
